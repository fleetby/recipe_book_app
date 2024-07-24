import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:recipe_book_app/presentation/widgets/home_body.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeBody();
  }
}
