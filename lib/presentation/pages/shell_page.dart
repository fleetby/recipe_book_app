import 'dart:core';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/presentation/app_router.gr.dart';
import 'package:recipe_book_app/presentation/blocs/authentication/authentication_bloc.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_book_app/presentation/pages/sign_in_required_snack_bar.dart';

@RoutePage()
class ShellPage extends StatelessWidget {
  const ShellPage({super.key});

  // HACK: Workaround for https://github.com/Milad-Akarie/auto_route_library/issues/1041
  static final _shellRoutes = _ShellRoutes([
    const _ShellRoute(page: HomeRoute(), requiresAuth: false),
    const _ShellRoute(page: SearchRoute(), requiresAuth: false),
    const _ShellRoute(page: CreateRecipeRoute(), requiresAuth: true),
    const _ShellRoute(page: SavedRecipesRoute(), requiresAuth: true),
    const _ShellRoute(page: AccountRoute(), requiresAuth: false),
  ]);

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return AutoTabsRouter(
      routes: _shellRoutes.onlyRoutes,
      builder: (context, child) {
        final router = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: NavigationBar(
            selectedIndex: router.activeIndex,
            onDestinationSelected: (index) {
              // HACK: https://github.com/flutter/flutter/issues/61659
              FocusManager.instance.primaryFocus?.unfocus();
              FocusScope.of(context).unfocus();

              final signedIn = context.read<AuthenticationBloc>().state
                  is AuthenticationSignedIn;
              if (_shellRoutes.routesWithInfo[index].requiresAuth &&
                  !signedIn) {
                const AccountRoute().navigate(context);
                requireSignedInOrShowSnackBar(context);
              } else {
                router.setActiveIndex(index);
              }
            },
            destinations: [
              NavigationDestination(
                icon: const Icon(PhosphorIconsRegular.notebook),
                selectedIcon: const Icon(PhosphorIconsFill.notebook),
                label: tr.recipesBranch,
              ),
              NavigationDestination(
                icon: const Icon(PhosphorIconsRegular.magnifyingGlass),
                selectedIcon: const Icon(PhosphorIconsFill.magnifyingGlass),
                label: tr.searchBranch,
              ),
              NavigationDestination(
                icon: const Icon(PhosphorIconsRegular.plus),
                selectedIcon: const Icon(PhosphorIconsFill.plus),
                label: tr.addBranch,
              ),
              NavigationDestination(
                icon: const Icon(PhosphorIconsRegular.calendarHeart),
                selectedIcon: const Icon(PhosphorIconsFill.calendarHeart),
                label: tr.savedBranch,
              ),
              NavigationDestination(
                icon: const Icon(PhosphorIconsRegular.user),
                selectedIcon: const Icon(PhosphorIconsFill.user),
                label: tr.accountBranch,
              ),
            ],
          ),
        );
      },
    );
  }
}

class _ShellRoutes {
  _ShellRoutes(List<_ShellRoute> routes) {
    routesWithInfo = List.unmodifiable(routes);
    onlyRoutes = List.unmodifiable(routes.map((e) => e.page));
  }

  late final List<_ShellRoute> routesWithInfo;
  late final List<PageRouteInfo<dynamic>> onlyRoutes;
}

class _ShellRoute {
  const _ShellRoute({
    required this.page,
    required this.requiresAuth,
  });

  final PageRouteInfo<dynamic> page;
  final bool requiresAuth;
}
