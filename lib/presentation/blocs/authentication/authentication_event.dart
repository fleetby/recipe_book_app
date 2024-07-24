part of 'authentication_bloc.dart';

@freezed
sealed class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.preload() = AuthenticationPreload;
  const factory AuthenticationEvent.setIsAuthenticated(bool isAuthenticated) =
      AuthenticationSetIsAuthenticated;
  const factory AuthenticationEvent.signIn({
    required String email,
    required String password,
  }) = AuthenticationSignIn;
  const factory AuthenticationEvent.signUp({
    required String email,
    required String password,
  }) = AuthenticationSignUp;
  const factory AuthenticationEvent.signOut() = AuthenticationSignOut;
}
