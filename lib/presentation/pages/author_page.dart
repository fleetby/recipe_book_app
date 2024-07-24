import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_book_app/get.dart';
import 'package:recipe_book_app/presentation/blocs/author/author_bloc.dart';
import 'package:recipe_book_app/presentation/widgets/author_body.dart';

@RoutePage()
class AuthorPage extends StatelessWidget {
  const AuthorPage(
    this.userId, {
    super.key,
  });

  final String userId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => get<AuthorBloc>()..add(AuthorLoad(userId)),
      child: const AuthorBody(),
    );
  }
}
