import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/models/user_profile_model.dart';
import 'package:recipe_book_app/domain/use_cases/check_is_following_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/follow_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_authenticated_user_id_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_is_following_changed_stream_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_user_profile_by_id_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/unfollow_use_case.dart';
import 'package:recipe_book_app/presentation/utils/debug.dart';

part 'author_bloc.freezed.dart';

part 'author_event.dart';
part 'author_state.dart';

@injectable
class AuthorBloc extends Bloc<AuthorEvent, AuthorState> {
  AuthorBloc(
    this.getUserProfileByIdUseCase,
    this.checkIsFollowingUseCase,
    this.followUseCase,
    this.unfollowUseCase,
    this.getAuthenticatedUserIdUseCase,
    this.getIsFollowingChangedStreamUseCase,
  ) : super(const AuthorState()) {
    on<AuthorLoad>(_load);
    on<AuthorSetFollowed>(_setFollowed);
    on<AuthorFollow>(_follow, transformer: droppable());
    on<AuthorUnfollow>(_unfollow, transformer: droppable());
  }

  final GetUserProfileByIdUseCase getUserProfileByIdUseCase;
  final FollowUseCase followUseCase;
  final UnfollowUseCase unfollowUseCase;
  final CheckIsFollowingUseCase checkIsFollowingUseCase;
  final GetAuthenticatedUserIdUseCase getAuthenticatedUserIdUseCase;
  final GetIsFollowingChangedStreamUseCase getIsFollowingChangedStreamUseCase;

  StreamSubscription<GetIsFollowingChangedStreamUseCaseEvent>?
      _isFollowingChangedStreamSubscription;

  Future<void> _load(AuthorLoad event, Emitter<AuthorState> emit) async {
    try {
      emit(const AuthorState());
      final userProfile = await getUserProfileByIdUseCase(
        GetUserProfileByIdUseCaseParams(id: event.userId),
      );

      final authenticatedUserId = await getAuthenticatedUserIdUseCase();

      final followed = authenticatedUserId != null
          ? await checkIsFollowingUseCase(
              CheckIsFollowingUseCaseParams(
                followerId: authenticatedUserId,
                followingId: event.userId,
              ),
            )
          : null;

      emit(
        userProfile != null
            ? AuthorState(
                userProfile: userProfile,
                followed: followed ?? false,
                isMe: userProfile.userId == authenticatedUserId,
              )
            : const AuthorState(),
      );

      unawaited(_isFollowingChangedStreamSubscription?.cancel());
      _isFollowingChangedStreamSubscription =
          getIsFollowingChangedStreamUseCase(
        GetIsFollowingChangedStreamUseCaseParams(
          followerId: authenticatedUserId,
          followingId: event.userId,
        ),
      ).listen(
        (event) {
          add(AuthorSetFollowed(event.isFollowing));
        },
      );
    } catch (e, st) {
      debugPrintError(e, st);
      emit(state.copyWith(error: (e, st)));
    }
  }

  Future<void> _follow(AuthorFollow event, Emitter<AuthorState> emit) async {
    final oldState = state;
    try {
      final userId = state.userProfile?.userId;
      if (userId == null) {
        return;
      }
      emit(
        state.copyWith(
          followed: true,
          userProfile: state.userProfile?.copyWith(
            followers: state.userProfile!.followers + 1,
          ),
        ),
      );
      await followUseCase(FollowUseCaseParams(userId: userId));
    } catch (e, st) {
      debugPrintError(e, st);
      emit(oldState);
    }
  }

  Future<void> _unfollow(
    AuthorUnfollow event,
    Emitter<AuthorState> emit,
  ) async {
    final oldState = state;
    try {
      final userId = state.userProfile?.userId;
      if (userId == null) {
        return;
      }
      emit(
        state.copyWith(
          followed: false,
          userProfile: state.userProfile?.copyWith(
            followers: state.userProfile!.followers - 1,
          ),
        ),
      );
      await unfollowUseCase(UnfollowUseCaseParams(userId: userId));
    } catch (e, st) {
      debugPrintError(e, st);
      emit(oldState);
    }
  }

  Future<void> _setFollowed(
    AuthorSetFollowed event,
    Emitter<AuthorState> emit,
  ) async {
    emit(state.copyWith(followed: event.followed));
  }

  @override
  Future<void> close() {
    _isFollowingChangedStreamSubscription?.cancel();
    return super.close();
  }
}
