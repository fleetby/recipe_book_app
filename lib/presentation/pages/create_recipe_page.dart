import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_book_app/get.dart';
import 'package:recipe_book_app/presentation/blocs/create_recipe/create_recipe_bloc.dart';
import 'package:recipe_book_app/presentation/blocs/directions_editor/directions_editor_bloc.dart';

import 'package:recipe_book_app/presentation/widgets/create_recipe_body.dart';

@RoutePage()
class CreateRecipePage extends StatelessWidget {
  const CreateRecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => get<CreateRecipeBloc>(),
        ),
        BlocProvider(
          create: (context) => get<DirectionsEditorBloc>(),
        ),
      ],
      child: CreateRecipeBody(),
    );
  }
}
