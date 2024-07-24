part of 'account_bloc.dart';

@freezed
sealed class AccountState with _$AccountState {
  const factory AccountState({
    UserProfileModel? userProfile,
    String? userEmail,
    (Object, StackTrace)? error,
    @Default(false) bool loading,
  }) = _AccountState;
}
