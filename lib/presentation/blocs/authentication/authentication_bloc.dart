import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/use_cases/is_authenticated_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/on_is_authenticated_change_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/sign_in_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/sign_out_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/sign_up_use_case.dart';

part 'authentication_bloc.freezed.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(
    this.signInUseCase,
    this.signUpUseCase,
    this.signOutUseCase,
    this.isAuthenticatedUseCase,
    this.onIsAuthenticatedChangeUseCase,
  ) : super(const AuthenticationInitial()) {
    on<AuthenticationPreload>(_preload);
    on<AuthenticationSetIsAuthenticated>(_setIsAuthenticated);
    on<AuthenticationSignIn>(_signIn);
    on<AuthenticationSignUp>(_signUp);
    on<AuthenticationSignOut>(_signOut);

    _onIsAuthenticatedChangeSubscription =
        onIsAuthenticatedChangeUseCase().listen(
      (isAuthenticated) => add(
        AuthenticationSetIsAuthenticated(isAuthenticated),
      ),
    );
  }

  final SignInUseCase signInUseCase;
  final SignUpUseCase signUpUseCase;
  final SignOutUseCase signOutUseCase;
  final IsAuthenticatedUseCase isAuthenticatedUseCase;
  final OnIsAuthenticatedChangeUseCase onIsAuthenticatedChangeUseCase;

  late final StreamSubscription<bool> _onIsAuthenticatedChangeSubscription;

  Future<void> _preload(
    AuthenticationPreload event,
    Emitter<AuthenticationState> emit,
  ) async {
    final isAuthenticated = await isAuthenticatedUseCase();
    add(AuthenticationSetIsAuthenticated(isAuthenticated));
  }

  Future<void> _setIsAuthenticated(
    AuthenticationSetIsAuthenticated event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(
      event.isAuthenticated
          ? const AuthenticationSignedIn()
          : const AuthenticationInitial(),
    );
  }

  Future<void> _signIn(
    AuthenticationSignIn event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(const AuthenticationLoading());

    final result = await signInUseCase(
      SignInUseCaseParams(
        email: event.email,
        password: event.password,
      ),
    );

    if (result) {
      emit(const AuthenticationSignedIn());
    } else {
      emit(const AuthenticationError());
    }
  }

  Future<void> _signUp(
    AuthenticationSignUp event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(const AuthenticationLoading());

    final result = await signUpUseCase(
      SignUpUseCaseParams(
        email: event.email,
        password: event.password,
      ),
    );

    if (result) {
      emit(const AuthenticationSignedIn());
    } else {
      emit(const AuthenticationError());
    }
  }

  Future<void> _signOut(
    AuthenticationSignOut event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(const AuthenticationLoading());
    await signOutUseCase();
  }

  @override
  Future<void> close() {
    _onIsAuthenticatedChangeSubscription.cancel();
    return super.close();
  }
}
