import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/models/user_profile_model.dart';
import 'package:recipe_book_app/domain/use_cases/get_authenticated_user_email_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_authenticated_user_id_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_authenticated_user_profile_changed_stream_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_user_profile_by_id_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/on_is_authenticated_change_use_case.dart';
import 'package:recipe_book_app/presentation/utils/debug.dart';

part 'account_bloc.freezed.dart';

part 'account_event.dart';
part 'account_state.dart';

@injectable
class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc(
    this.getAuthenticatedUserIdUseCase,
    this.getUserProfileByIdUseCase,
    this.getAuthenticatedUserEmailUseCase,
    this.onIsAuthenticatedChangeUseCase,
    this.getAuthenticatedUserProfileChangedStreamUseCase,
  ) : super(const AccountState(loading: true)) {
    _onIsAuthenticatedChangeSubscription = onIsAuthenticatedChangeUseCase()
        .listen((_) => add(const AccountLoad()));
    _authenticatedUserProfileChangedStreamSubscription =
        getAuthenticatedUserProfileChangedStreamUseCase()
            .listen((_) => add(const AccountLoad()));
    on<AccountLoad>(_load, transformer: sequential());
  }

  final GetUserProfileByIdUseCase getUserProfileByIdUseCase;
  final GetAuthenticatedUserIdUseCase getAuthenticatedUserIdUseCase;
  final GetAuthenticatedUserEmailUseCase getAuthenticatedUserEmailUseCase;
  final OnIsAuthenticatedChangeUseCase onIsAuthenticatedChangeUseCase;
  final GetAuthenticatedUserProfileChangedStreamUseCase
      getAuthenticatedUserProfileChangedStreamUseCase;

  late final StreamSubscription<bool> _onIsAuthenticatedChangeSubscription;
  late final StreamSubscription<void>
      _authenticatedUserProfileChangedStreamSubscription;

  Future<void> _load(AccountLoad event, Emitter<AccountState> emit) async {
    try {
      emit(const AccountState(loading: true));
      final userId = await getAuthenticatedUserIdUseCase();
      if (userId == null) {
        return;
      }
      final userProfile = await getUserProfileByIdUseCase(
        GetUserProfileByIdUseCaseParams(id: userId),
      );
      final userEmail = await getAuthenticatedUserEmailUseCase();
      emit(
        userProfile != null && userEmail != null
            ? AccountState(
                userProfile: userProfile,
                userEmail: userEmail,
              )
            : const AccountState(),
      );
    } catch (e, st) {
      debugPrintError(e, st);
      emit(state.copyWith(error: (e, st)));
    }
  }

  @override
  Future<void> close() {
    _onIsAuthenticatedChangeSubscription.cancel();
    _authenticatedUserProfileChangedStreamSubscription.cancel();
    return super.close();
  }
}
