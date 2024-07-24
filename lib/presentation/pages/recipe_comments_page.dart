import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_book_app/get.dart';
import 'package:recipe_book_app/presentation/blocs/recipe_comments/recipe_comments_bloc.dart';
import 'package:recipe_book_app/presentation/widgets/recipe_comments_body.dart';

@RoutePage()
class RecipeCommentsPage extends StatelessWidget {
  const RecipeCommentsPage(this.recipeId, {super.key});

  final int recipeId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => get<RecipeCommentsBloc>()
        ..add(RecipeCommentsLoad(recipeId: recipeId)),
      child: RecipeCommentsBody(),
    );
  }
}
