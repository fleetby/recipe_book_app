import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:recipe_book_app/presentation/widgets/search_body.dart';

@RoutePage()
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SearchBody();
  }
}
