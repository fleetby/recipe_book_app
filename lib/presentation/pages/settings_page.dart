import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:recipe_book_app/presentation/widgets/settings_body.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SettingsBody();
  }
}
