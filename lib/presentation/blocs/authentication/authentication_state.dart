part of 'authentication_bloc.dart';

@freezed
sealed class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = AuthenticationInitial;
  const factory AuthenticationState.loading() = AuthenticationLoading;
  const factory AuthenticationState.signedIn() = AuthenticationSignedIn;
  const factory AuthenticationState.error() = AuthenticationError;
}
