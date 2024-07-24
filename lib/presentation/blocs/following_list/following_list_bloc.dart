import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/models/user_profile_model.dart';
import 'package:recipe_book_app/domain/use_cases/get_authenticated_user_id_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_following_use_case.dart';
import 'package:recipe_book_app/presentation/utils/debug.dart';

part 'following_list_bloc.freezed.dart';

part 'following_list_event.dart';
part 'following_list_state.dart';

@injectable
class FollowingListBloc extends Bloc<FollowingListEvent, FollowingListState> {
  FollowingListBloc(
    this.getFollowingUseCase,
    this.getAuthenticatedUserIdUseCase,
  ) : super(const FollowingListState(loading: true)) {
    on<FollowingListLoad>(_load);
  }

  final GetFollowingUseCase getFollowingUseCase;
  final GetAuthenticatedUserIdUseCase getAuthenticatedUserIdUseCase;

  Future<void> _load(
    FollowingListLoad event,
    Emitter<FollowingListState> emit,
  ) async {
    try {
      emit(const FollowingListState(loading: true));
      final followerId =
          event.followerId ?? await getAuthenticatedUserIdUseCase();

      if (followerId == null) {
        throw Exception('Follower id is null');
      }

      final followingList = await getFollowingUseCase(
        GetFollowingUseCaseParams(
          followerId: followerId,
          invalidateCache: event.invalidateCache,
        ),
      );

      emit(FollowingListState(followingList: followingList));
    } catch (e, st) {
      debugPrintError(e, st);
      emit(FollowingListState(error: (e, st)));
    }
  }
}
