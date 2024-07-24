import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_book_app/presentation/blocs/authentication/authentication_bloc.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';

bool requireSignedInOrShowSnackBar(
  BuildContext context, [
  bool removeSnackBar = true,
]) {
  final signedIn =
      context.read<AuthenticationBloc>().state is AuthenticationSignedIn;

  if (!signedIn) {
    if (removeSnackBar) {
      ScaffoldMessenger.of(context).removeCurrentSnackBar();
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(AppLocalizations.of(context).signInRequired),
        showCloseIcon: true,
      ),
    );
    return false;
  }

  return true;
}
