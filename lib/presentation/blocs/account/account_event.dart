part of 'account_bloc.dart';

@freezed
sealed class AccountEvent with _$AccountEvent {
  const factory AccountEvent.load() = AccountLoad;
}
