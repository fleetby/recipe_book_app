import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/presentation/app_router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: ShellRoute.page,
          // maintainState: false,
          children: [
            AutoRoute(initial: true, page: HomeRoute.page),
            AutoRoute(page: SearchRoute.page),
            AutoRoute(page: CreateRecipeRoute.page),
            AutoRoute(page: SavedRecipesRoute.page),
            AutoRoute(page: AccountRoute.page),
          ],
        ),
        AutoRoute(page: RecipeRoute.page),
        AutoRoute(page: RequireSignRoute.page),
        AutoRoute(page: AuthorRoute.page),
        AutoRoute(page: RecipeCommentsRoute.page),
        AutoRoute(page: EditProfileRoute.page),
        AutoRoute(page: EditRecipeRoute.page),
        AutoRoute(page: SettingsRoute.page),
        AutoRoute(
          page: ImageViewerRoute.page,
          type: CustomRouteType(
            opaque: false,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        ),
      ];
}

// FIXME: https://github.com/Milad-Akarie/auto_route_library/issues/1041
// class _AuthGuard extends AutoRouteGuard {
//   @override
//   void onNavigation(NavigationResolver resolver, StackRouter router) {
//     final authenticationState =
//         router.navigatorKey.currentContext!.read<AuthenticationBloc>().state;
//     if (authenticationState is! AuthenticationSignedIn) {
//       resolver.redirect(const AccountRoute());
//       return;
//     }

//     resolver.next();
//   }
// }
