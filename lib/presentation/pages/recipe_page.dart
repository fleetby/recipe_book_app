import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_book_app/get.dart';
import 'package:recipe_book_app/presentation/blocs/recipe/recipe_bloc/recipe_bloc.dart';
import 'package:recipe_book_app/presentation/widgets/recipe_body.dart';

@RoutePage()
class RecipePage extends StatelessWidget {
  const RecipePage({
    required this.id,
    super.key,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => get<RecipeBloc>()..add(RecipeLoad(id)),
      child: const RecipeBody(),
    );
  }
}
