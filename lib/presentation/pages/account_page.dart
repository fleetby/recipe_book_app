import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_book_app/get.dart';
import 'package:recipe_book_app/presentation/blocs/account/account_bloc.dart';
import 'package:recipe_book_app/presentation/widgets/account_body.dart';

@RoutePage()
class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => get<AccountBloc>()..add(const AccountLoad()),
      child: AccountBody(),
    );
  }
}
