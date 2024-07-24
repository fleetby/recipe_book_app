// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;
import 'package:flutter/widgets.dart' as _i17;
import 'package:recipe_book_app/presentation/pages/account_page.dart' as _i1;
import 'package:recipe_book_app/presentation/pages/author_page.dart' as _i2;
import 'package:recipe_book_app/presentation/pages/create_recipe_page.dart'
    as _i3;
import 'package:recipe_book_app/presentation/pages/edit_profile_page.dart'
    as _i4;
import 'package:recipe_book_app/presentation/pages/edit_recipe_page.dart'
    as _i5;
import 'package:recipe_book_app/presentation/pages/home_page.dart' as _i6;
import 'package:recipe_book_app/presentation/pages/image_viewer_page.dart'
    as _i7;
import 'package:recipe_book_app/presentation/pages/recipe_comments_page.dart'
    as _i8;
import 'package:recipe_book_app/presentation/pages/recipe_page.dart' as _i9;
import 'package:recipe_book_app/presentation/pages/require_sign_page.dart'
    as _i10;
import 'package:recipe_book_app/presentation/pages/saved_recipes_page.dart'
    as _i11;
import 'package:recipe_book_app/presentation/pages/search_page.dart' as _i12;
import 'package:recipe_book_app/presentation/pages/settings_page.dart' as _i13;
import 'package:recipe_book_app/presentation/pages/shell_page.dart' as _i14;

abstract class $AppRouter extends _i15.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountPage(),
      );
    },
    AuthorRoute.name: (routeData) {
      final args = routeData.argsAs<AuthorRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AuthorPage(
          args.userId,
          key: args.key,
        ),
      );
    },
    CreateRecipeRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CreateRecipePage(),
      );
    },
    EditProfileRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.EditProfilePage(),
      );
    },
    EditRecipeRoute.name: (routeData) {
      final args = routeData.argsAs<EditRecipeRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.EditRecipePage(
          args.recipeId,
          key: args.key,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    ImageViewerRoute.name: (routeData) {
      final args = routeData.argsAs<ImageViewerRouteArgs>(
          orElse: () => const ImageViewerRouteArgs());
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.ImageViewerPage(
          imageUrl: args.imageUrl,
          imageProvider: args.imageProvider,
          key: args.key,
        ),
      );
    },
    RecipeCommentsRoute.name: (routeData) {
      final args = routeData.argsAs<RecipeCommentsRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.RecipeCommentsPage(
          args.recipeId,
          key: args.key,
        ),
      );
    },
    RecipeRoute.name: (routeData) {
      final args = routeData.argsAs<RecipeRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.RecipePage(
          id: args.id,
          key: args.key,
        ),
      );
    },
    RequireSignRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.RequireSignPage(),
      );
    },
    SavedRecipesRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SavedRecipesPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SearchPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SettingsPage(),
      );
    },
    ShellRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.ShellPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountPage]
class AccountRoute extends _i15.PageRouteInfo<void> {
  const AccountRoute({List<_i15.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthorPage]
class AuthorRoute extends _i15.PageRouteInfo<AuthorRouteArgs> {
  AuthorRoute({
    required String userId,
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          AuthorRoute.name,
          args: AuthorRouteArgs(
            userId: userId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthorRoute';

  static const _i15.PageInfo<AuthorRouteArgs> page =
      _i15.PageInfo<AuthorRouteArgs>(name);
}

class AuthorRouteArgs {
  const AuthorRouteArgs({
    required this.userId,
    this.key,
  });

  final String userId;

  final _i16.Key? key;

  @override
  String toString() {
    return 'AuthorRouteArgs{userId: $userId, key: $key}';
  }
}

/// generated route for
/// [_i3.CreateRecipePage]
class CreateRecipeRoute extends _i15.PageRouteInfo<void> {
  const CreateRecipeRoute({List<_i15.PageRouteInfo>? children})
      : super(
          CreateRecipeRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateRecipeRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i4.EditProfilePage]
class EditProfileRoute extends _i15.PageRouteInfo<void> {
  const EditProfileRoute({List<_i15.PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i5.EditRecipePage]
class EditRecipeRoute extends _i15.PageRouteInfo<EditRecipeRouteArgs> {
  EditRecipeRoute({
    required int recipeId,
    _i17.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          EditRecipeRoute.name,
          args: EditRecipeRouteArgs(
            recipeId: recipeId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'EditRecipeRoute';

  static const _i15.PageInfo<EditRecipeRouteArgs> page =
      _i15.PageInfo<EditRecipeRouteArgs>(name);
}

class EditRecipeRouteArgs {
  const EditRecipeRouteArgs({
    required this.recipeId,
    this.key,
  });

  final int recipeId;

  final _i17.Key? key;

  @override
  String toString() {
    return 'EditRecipeRouteArgs{recipeId: $recipeId, key: $key}';
  }
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i15.PageRouteInfo<void> {
  const HomeRoute({List<_i15.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ImageViewerPage]
class ImageViewerRoute extends _i15.PageRouteInfo<ImageViewerRouteArgs> {
  ImageViewerRoute({
    String? imageUrl,
    _i16.ImageProvider<Object>? imageProvider,
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          ImageViewerRoute.name,
          args: ImageViewerRouteArgs(
            imageUrl: imageUrl,
            imageProvider: imageProvider,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ImageViewerRoute';

  static const _i15.PageInfo<ImageViewerRouteArgs> page =
      _i15.PageInfo<ImageViewerRouteArgs>(name);
}

class ImageViewerRouteArgs {
  const ImageViewerRouteArgs({
    this.imageUrl,
    this.imageProvider,
    this.key,
  });

  final String? imageUrl;

  final _i16.ImageProvider<Object>? imageProvider;

  final _i16.Key? key;

  @override
  String toString() {
    return 'ImageViewerRouteArgs{imageUrl: $imageUrl, imageProvider: $imageProvider, key: $key}';
  }
}

/// generated route for
/// [_i8.RecipeCommentsPage]
class RecipeCommentsRoute extends _i15.PageRouteInfo<RecipeCommentsRouteArgs> {
  RecipeCommentsRoute({
    required int recipeId,
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          RecipeCommentsRoute.name,
          args: RecipeCommentsRouteArgs(
            recipeId: recipeId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'RecipeCommentsRoute';

  static const _i15.PageInfo<RecipeCommentsRouteArgs> page =
      _i15.PageInfo<RecipeCommentsRouteArgs>(name);
}

class RecipeCommentsRouteArgs {
  const RecipeCommentsRouteArgs({
    required this.recipeId,
    this.key,
  });

  final int recipeId;

  final _i16.Key? key;

  @override
  String toString() {
    return 'RecipeCommentsRouteArgs{recipeId: $recipeId, key: $key}';
  }
}

/// generated route for
/// [_i9.RecipePage]
class RecipeRoute extends _i15.PageRouteInfo<RecipeRouteArgs> {
  RecipeRoute({
    required int id,
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          RecipeRoute.name,
          args: RecipeRouteArgs(
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'RecipeRoute';

  static const _i15.PageInfo<RecipeRouteArgs> page =
      _i15.PageInfo<RecipeRouteArgs>(name);
}

class RecipeRouteArgs {
  const RecipeRouteArgs({
    required this.id,
    this.key,
  });

  final int id;

  final _i16.Key? key;

  @override
  String toString() {
    return 'RecipeRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [_i10.RequireSignPage]
class RequireSignRoute extends _i15.PageRouteInfo<void> {
  const RequireSignRoute({List<_i15.PageRouteInfo>? children})
      : super(
          RequireSignRoute.name,
          initialChildren: children,
        );

  static const String name = 'RequireSignRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SavedRecipesPage]
class SavedRecipesRoute extends _i15.PageRouteInfo<void> {
  const SavedRecipesRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SavedRecipesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SavedRecipesRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SearchPage]
class SearchRoute extends _i15.PageRouteInfo<void> {
  const SearchRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SettingsPage]
class SettingsRoute extends _i15.PageRouteInfo<void> {
  const SettingsRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i14.ShellPage]
class ShellRoute extends _i15.PageRouteInfo<void> {
  const ShellRoute({List<_i15.PageRouteInfo>? children})
      : super(
          ShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShellRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}
