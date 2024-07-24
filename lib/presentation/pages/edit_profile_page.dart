import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_book_app/get.dart';
import 'package:recipe_book_app/presentation/blocs/edit_profile/edit_profile_bloc.dart';
import 'package:recipe_book_app/presentation/widgets/edit_profile_body.dart';

@RoutePage()
class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => get<EditProfileBloc>()..add(const EditProfileLoad()),
      child: EditProfileBody(),
    );
  }
}
