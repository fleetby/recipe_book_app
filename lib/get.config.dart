// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_dotenv/flutter_dotenv.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:recipe_book_app/data/caching/cache.dart' as _i7;
import 'package:recipe_book_app/data/caching/in_memory_cache.dart' as _i8;
import 'package:recipe_book_app/data/modules/dot_env_module.dart' as _i79;
import 'package:recipe_book_app/data/modules/shared_preferences_module.dart'
    as _i80;
import 'package:recipe_book_app/data/modules/supabase_module.dart' as _i81;
import 'package:recipe_book_app/data/repositories/authentication_repository_impl.dart'
    as _i28;
import 'package:recipe_book_app/data/repositories/categories_repository_impl.dart'
    as _i11;
import 'package:recipe_book_app/data/repositories/files_repository_impl.dart'
    as _i20;
import 'package:recipe_book_app/data/repositories/recipe_comments_repository_impl.dart'
    as _i17;
import 'package:recipe_book_app/data/repositories/recipes_repository_impl.dart'
    as _i36;
import 'package:recipe_book_app/data/repositories/settings_repository_impl.dart'
    as _i13;
import 'package:recipe_book_app/data/repositories/user_profiles_repository_impl.dart'
    as _i15;
import 'package:recipe_book_app/domain/repositories/authentication_repository.dart'
    as _i27;
import 'package:recipe_book_app/domain/repositories/categories_repository.dart'
    as _i10;
import 'package:recipe_book_app/domain/repositories/files_repository.dart'
    as _i19;
import 'package:recipe_book_app/domain/repositories/recipe_comments_repository.dart'
    as _i16;
import 'package:recipe_book_app/domain/repositories/recipes_repository.dart'
    as _i35;
import 'package:recipe_book_app/domain/repositories/settings_repository.dart'
    as _i12;
import 'package:recipe_book_app/domain/repositories/user_profiles_repository.dart'
    as _i14;
import 'package:recipe_book_app/domain/use_cases/check_is_following_use_case.dart'
    as _i38;
import 'package:recipe_book_app/domain/use_cases/check_is_recipe_saved_by_authenticated_user_use_case.dart'
    as _i57;
import 'package:recipe_book_app/domain/use_cases/create_or_edit_user_profile_use_case.dart'
    as _i39;
import 'package:recipe_book_app/domain/use_cases/create_recipe_comment_use_case.dart'
    as _i32;
import 'package:recipe_book_app/domain/use_cases/create_recipe_use_case.dart'
    as _i62;
import 'package:recipe_book_app/domain/use_cases/delete_comment_use_case.dart'
    as _i33;
import 'package:recipe_book_app/domain/use_cases/delete_recipe_by_id_use_case.dart'
    as _i63;
import 'package:recipe_book_app/domain/use_cases/edit_recipe_use_case.dart'
    as _i64;
import 'package:recipe_book_app/domain/use_cases/follow_use_case.dart' as _i40;
import 'package:recipe_book_app/domain/use_cases/get_authenticated_user_email_use_case.dart'
    as _i49;
import 'package:recipe_book_app/domain/use_cases/get_authenticated_user_id_use_case.dart'
    as _i55;
import 'package:recipe_book_app/domain/use_cases/get_authenticated_user_profile_changed_stream_use_case.dart'
    as _i41;
import 'package:recipe_book_app/domain/use_cases/get_category_by_id_use_case.dart'
    as _i18;
import 'package:recipe_book_app/domain/use_cases/get_covers_for_search_types_use_case.dart'
    as _i65;
import 'package:recipe_book_app/domain/use_cases/get_file_url_use_case.dart'
    as _i29;
import 'package:recipe_book_app/domain/use_cases/get_followers_use_case.dart'
    as _i42;
import 'package:recipe_book_app/domain/use_cases/get_following_use_case.dart'
    as _i43;
import 'package:recipe_book_app/domain/use_cases/get_is_following_changed_stream_use_case.dart'
    as _i44;
import 'package:recipe_book_app/domain/use_cases/get_preferred_app_theme_changed_stream_use_case.dart'
    as _i21;
import 'package:recipe_book_app/domain/use_cases/get_preferred_app_theme_use_case.dart'
    as _i22;
import 'package:recipe_book_app/domain/use_cases/get_preferred_locale_changed_stream_use_case.dart'
    as _i23;
import 'package:recipe_book_app/domain/use_cases/get_preferred_locale_use_case.dart'
    as _i24;
import 'package:recipe_book_app/domain/use_cases/get_recipe_by_id_use_case.dart'
    as _i59;
import 'package:recipe_book_app/domain/use_cases/get_recipe_changed_stream_use_case.dart'
    as _i60;
import 'package:recipe_book_app/domain/use_cases/get_recipe_comment_by_id_use_case.dart'
    as _i34;
import 'package:recipe_book_app/domain/use_cases/get_recipe_comments_use_case.dart'
    as _i31;
import 'package:recipe_book_app/domain/use_cases/get_recipe_deleted_stream_use_case.dart'
    as _i66;
import 'package:recipe_book_app/domain/use_cases/get_recipes_use_case.dart'
    as _i58;
import 'package:recipe_book_app/domain/use_cases/get_user_profile_by_id_use_case.dart'
    as _i45;
import 'package:recipe_book_app/domain/use_cases/get_user_profile_changed_stream_use_case.dart'
    as _i46;
import 'package:recipe_book_app/domain/use_cases/invalidate_recipes_cache_use_case.dart'
    as _i61;
import 'package:recipe_book_app/domain/use_cases/is_authenticated_use_case.dart'
    as _i50;
import 'package:recipe_book_app/domain/use_cases/notify_authenticated_user_profile_changed_use_case.dart'
    as _i47;
import 'package:recipe_book_app/domain/use_cases/on_is_authenticated_change_use_case.dart'
    as _i51;
import 'package:recipe_book_app/domain/use_cases/save_recipe_use_case.dart'
    as _i67;
import 'package:recipe_book_app/domain/use_cases/set_preferred_app_theme_use_case.dart'
    as _i25;
import 'package:recipe_book_app/domain/use_cases/set_preferred_locale_use_case.dart'
    as _i26;
import 'package:recipe_book_app/domain/use_cases/sign_in_use_case.dart' as _i52;
import 'package:recipe_book_app/domain/use_cases/sign_out_use_case.dart'
    as _i53;
import 'package:recipe_book_app/domain/use_cases/sign_up_use_case.dart' as _i54;
import 'package:recipe_book_app/domain/use_cases/unfollow_use_case.dart'
    as _i48;
import 'package:recipe_book_app/domain/use_cases/unsave_recipe_use_case.dart'
    as _i68;
import 'package:recipe_book_app/domain/use_cases/upload_file_use_case.dart'
    as _i30;
import 'package:recipe_book_app/presentation/app_router.dart' as _i6;
import 'package:recipe_book_app/presentation/blocs/account/account_bloc.dart'
    as _i56;
import 'package:recipe_book_app/presentation/blocs/authentication/authentication_bloc.dart'
    as _i77;
import 'package:recipe_book_app/presentation/blocs/author/author_bloc.dart'
    as _i76;
import 'package:recipe_book_app/presentation/blocs/create_recipe/create_recipe_bloc.dart'
    as _i74;
import 'package:recipe_book_app/presentation/blocs/directions_editor/directions_editor_bloc.dart'
    as _i5;
import 'package:recipe_book_app/presentation/blocs/edit_profile/edit_profile_bloc.dart'
    as _i70;
import 'package:recipe_book_app/presentation/blocs/edit_recipe/edit_recipe_bloc.dart'
    as _i69;
import 'package:recipe_book_app/presentation/blocs/following_list/following_list_bloc.dart'
    as _i75;
import 'package:recipe_book_app/presentation/blocs/recipe/recipe_bloc/recipe_bloc.dart'
    as _i78;
import 'package:recipe_book_app/presentation/blocs/recipe_comments/recipe_comments_bloc.dart'
    as _i71;
import 'package:recipe_book_app/presentation/blocs/recipe_list/recipe_list_bloc.dart'
    as _i73;
import 'package:recipe_book_app/presentation/blocs/search_types/search_types_bloc.dart'
    as _i72;
import 'package:recipe_book_app/presentation/blocs/settings/settings_bloc.dart'
    as _i37;
import 'package:shared_preferences/shared_preferences.dart' as _i4;
import 'package:supabase_flutter/supabase_flutter.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dotEnvModule = _$DotEnvModule();
    final sharedPreferencesModule = _$SharedPreferencesModule();
    final supabaseModule = _$SupabaseModule();
    await gh.factoryAsync<_i3.DotEnv>(
      () => dotEnvModule.resolve(),
      preResolve: true,
    );
    await gh.factoryAsync<_i4.SharedPreferences>(
      () => sharedPreferencesModule.sharedPreferences(),
      preResolve: true,
    );
    gh.factory<_i5.DirectionsEditorBloc>(() => _i5.DirectionsEditorBloc());
    gh.singleton<_i6.AppRouter>(() => _i6.AppRouter());
    gh.factory<_i7.Cache>(() => _i8.InMemoryCache());
    await gh.factoryAsync<_i9.SupabaseClient>(
      () => supabaseModule.supabaseClient(gh<_i3.DotEnv>()),
      preResolve: true,
    );
    gh.singleton<_i10.CategoriesRepository>(() => _i11.CategoriesRepositoryImpl(
          gh<_i9.SupabaseClient>(),
          gh<_i7.Cache>(),
        ));
    gh.singleton<_i12.SettingsRepository>(
        () => _i13.SettingsRepositoryImpl(gh<_i4.SharedPreferences>()));
    gh.singleton<_i14.UserProfilesRepository>(
        () => _i15.UserProfilesRepositoryImpl(
              gh<_i9.SupabaseClient>(),
              gh<_i7.Cache>(),
            ));
    gh.singleton<_i16.RecipeCommentsRepository>(
        () => _i17.RecipeCommentsRepositoryImpl(
              gh<_i9.SupabaseClient>(),
              gh<_i7.Cache>(),
            ));
    gh.factory<_i18.GetCategoryByIdUseCase>(
        () => _i18.GetCategoryByIdUseCase(gh<_i10.CategoriesRepository>()));
    gh.singleton<_i19.FilesRepository>(
        () => _i20.FilesRepositoryImpl(gh<_i9.SupabaseClient>()));
    gh.singleton<_i21.GetPreferredAppThemeChangedStreamUseCase>(() =>
        _i21.GetPreferredAppThemeChangedStreamUseCase(
            gh<_i12.SettingsRepository>()));
    gh.singleton<_i22.GetPreferredAppThemeUseCase>(
        () => _i22.GetPreferredAppThemeUseCase(gh<_i12.SettingsRepository>()));
    gh.singleton<_i23.GetPreferredLocaleChangedStreamUseCase>(() =>
        _i23.GetPreferredLocaleChangedStreamUseCase(
            gh<_i12.SettingsRepository>()));
    gh.singleton<_i24.GetPreferredLocaleUseCase>(
        () => _i24.GetPreferredLocaleUseCase(gh<_i12.SettingsRepository>()));
    gh.singleton<_i25.SetPreferredAppThemeUseCase>(
        () => _i25.SetPreferredAppThemeUseCase(gh<_i12.SettingsRepository>()));
    gh.singleton<_i26.SetPreferredLocaleUseCase>(
        () => _i26.SetPreferredLocaleUseCase(gh<_i12.SettingsRepository>()));
    gh.singleton<_i27.AuthenticationRepository>(
        () => _i28.AuthenticationRepositoryImpl(gh<_i9.SupabaseClient>()));
    gh.singleton<_i29.GetFileUrlUseCase>(
        () => _i29.GetFileUrlUseCase(gh<_i19.FilesRepository>()));
    gh.singleton<_i30.UploadFileUseCase>(
        () => _i30.UploadFileUseCase(gh<_i19.FilesRepository>()));
    gh.factory<_i31.GetRecipeCommentsUseCase>(() =>
        _i31.GetRecipeCommentsUseCase(gh<_i16.RecipeCommentsRepository>()));
    gh.singleton<_i32.CreateRecipeCommentUseCase>(() =>
        _i32.CreateRecipeCommentUseCase(gh<_i16.RecipeCommentsRepository>()));
    gh.singleton<_i33.DeleteCommentUseCase>(
        () => _i33.DeleteCommentUseCase(gh<_i16.RecipeCommentsRepository>()));
    gh.singleton<_i34.GetRecipeCommentByIdUseCase>(() =>
        _i34.GetRecipeCommentByIdUseCase(gh<_i16.RecipeCommentsRepository>()));
    gh.singleton<_i35.RecipesRepository>(() => _i36.RecipesRepositoryImpl(
          gh<_i9.SupabaseClient>(),
          gh<_i7.Cache>(),
        ));
    gh.factory<_i37.SettingsBloc>(() => _i37.SettingsBloc(
          gh<_i22.GetPreferredAppThemeUseCase>(),
          gh<_i24.GetPreferredLocaleUseCase>(),
          gh<_i21.GetPreferredAppThemeChangedStreamUseCase>(),
          gh<_i23.GetPreferredLocaleChangedStreamUseCase>(),
          gh<_i25.SetPreferredAppThemeUseCase>(),
          gh<_i26.SetPreferredLocaleUseCase>(),
        ));
    gh.singleton<_i38.CheckIsFollowingUseCase>(
        () => _i38.CheckIsFollowingUseCase(gh<_i14.UserProfilesRepository>()));
    gh.singleton<_i39.CreateOrEditUserProfileUseCase>(() =>
        _i39.CreateOrEditUserProfileUseCase(gh<_i14.UserProfilesRepository>()));
    gh.singleton<_i40.FollowUseCase>(
        () => _i40.FollowUseCase(gh<_i14.UserProfilesRepository>()));
    gh.singleton<_i41.GetAuthenticatedUserProfileChangedStreamUseCase>(() =>
        _i41.GetAuthenticatedUserProfileChangedStreamUseCase(
            gh<_i14.UserProfilesRepository>()));
    gh.singleton<_i42.GetFollowersUseCase>(
        () => _i42.GetFollowersUseCase(gh<_i14.UserProfilesRepository>()));
    gh.singleton<_i43.GetFollowingUseCase>(
        () => _i43.GetFollowingUseCase(gh<_i14.UserProfilesRepository>()));
    gh.singleton<_i44.GetIsFollowingChangedStreamUseCase>(() =>
        _i44.GetIsFollowingChangedStreamUseCase(
            gh<_i14.UserProfilesRepository>()));
    gh.singleton<_i45.GetUserProfileByIdUseCase>(() =>
        _i45.GetUserProfileByIdUseCase(gh<_i14.UserProfilesRepository>()));
    gh.singleton<_i46.GetUserProfileChangedStreamUseCase>(() =>
        _i46.GetUserProfileChangedStreamUseCase(
            gh<_i14.UserProfilesRepository>()));
    gh.singleton<_i47.NotifyAuthenticatedUserProfileChangedUseCase>(() =>
        _i47.NotifyAuthenticatedUserProfileChangedUseCase(
            gh<_i14.UserProfilesRepository>()));
    gh.singleton<_i48.UnfollowUseCase>(
        () => _i48.UnfollowUseCase(gh<_i14.UserProfilesRepository>()));
    gh.singleton<_i49.GetAuthenticatedUserEmailUseCase>(() =>
        _i49.GetAuthenticatedUserEmailUseCase(
            gh<_i27.AuthenticationRepository>()));
    gh.singleton<_i50.IsAuthenticatedUseCase>(
        () => _i50.IsAuthenticatedUseCase(gh<_i27.AuthenticationRepository>()));
    gh.singleton<_i51.OnIsAuthenticatedChangeUseCase>(() =>
        _i51.OnIsAuthenticatedChangeUseCase(
            gh<_i27.AuthenticationRepository>()));
    gh.singleton<_i52.SignInUseCase>(
        () => _i52.SignInUseCase(gh<_i27.AuthenticationRepository>()));
    gh.singleton<_i53.SignOutUseCase>(
        () => _i53.SignOutUseCase(gh<_i27.AuthenticationRepository>()));
    gh.singleton<_i54.SignUpUseCase>(
        () => _i54.SignUpUseCase(gh<_i27.AuthenticationRepository>()));
    gh.factory<_i55.GetAuthenticatedUserIdUseCase>(() =>
        _i55.GetAuthenticatedUserIdUseCase(
            gh<_i27.AuthenticationRepository>()));
    gh.factory<_i56.AccountBloc>(() => _i56.AccountBloc(
          gh<_i55.GetAuthenticatedUserIdUseCase>(),
          gh<_i45.GetUserProfileByIdUseCase>(),
          gh<_i49.GetAuthenticatedUserEmailUseCase>(),
          gh<_i51.OnIsAuthenticatedChangeUseCase>(),
          gh<_i41.GetAuthenticatedUserProfileChangedStreamUseCase>(),
        ));
    gh.factory<_i57.CheckIsRecipeSavedByAuthenticatedUserUseCase>(() =>
        _i57.CheckIsRecipeSavedByAuthenticatedUserUseCase(
            gh<_i35.RecipesRepository>()));
    gh.factory<_i58.GetRecipesUseCase>(
        () => _i58.GetRecipesUseCase(gh<_i35.RecipesRepository>()));
    gh.factory<_i59.GetRecipeByIdUseCase>(
        () => _i59.GetRecipeByIdUseCase(gh<_i35.RecipesRepository>()));
    gh.factory<_i60.GetRecipeChangedStreamUseCase>(
        () => _i60.GetRecipeChangedStreamUseCase(gh<_i35.RecipesRepository>()));
    gh.factory<_i61.InvalidateRecipesCacheUseCase>(
        () => _i61.InvalidateRecipesCacheUseCase(gh<_i35.RecipesRepository>()));
    gh.singleton<_i62.CreateRecipeUseCase>(
        () => _i62.CreateRecipeUseCase(gh<_i35.RecipesRepository>()));
    gh.singleton<_i63.DeleteRecipeByIdUseCase>(
        () => _i63.DeleteRecipeByIdUseCase(gh<_i35.RecipesRepository>()));
    gh.singleton<_i64.EditRecipeUseCase>(
        () => _i64.EditRecipeUseCase(gh<_i35.RecipesRepository>()));
    gh.singleton<_i65.GetCoversForSearchTypesUseCase>(() =>
        _i65.GetCoversForSearchTypesUseCase(gh<_i35.RecipesRepository>()));
    gh.singleton<_i66.GetRecipeDeletedStreamUseCase>(
        () => _i66.GetRecipeDeletedStreamUseCase(gh<_i35.RecipesRepository>()));
    gh.singleton<_i67.SaveRecipeUseCase>(
        () => _i67.SaveRecipeUseCase(gh<_i35.RecipesRepository>()));
    gh.singleton<_i68.UnsaveRecipeUseCase>(
        () => _i68.UnsaveRecipeUseCase(gh<_i35.RecipesRepository>()));
    gh.factory<_i69.EditRecipeBloc>(() => _i69.EditRecipeBloc(
          gh<_i59.GetRecipeByIdUseCase>(),
          gh<_i63.DeleteRecipeByIdUseCase>(),
          gh<_i64.EditRecipeUseCase>(),
          gh<_i30.UploadFileUseCase>(),
        ));
    gh.factory<_i70.EditProfileBloc>(() => _i70.EditProfileBloc(
          gh<_i55.GetAuthenticatedUserIdUseCase>(),
          gh<_i45.GetUserProfileByIdUseCase>(),
          gh<_i39.CreateOrEditUserProfileUseCase>(),
          gh<_i30.UploadFileUseCase>(),
        ));
    gh.factory<_i71.RecipeCommentsBloc>(() => _i71.RecipeCommentsBloc(
          gh<_i31.GetRecipeCommentsUseCase>(),
          gh<_i32.CreateRecipeCommentUseCase>(),
          gh<_i45.GetUserProfileByIdUseCase>(),
          gh<_i55.GetAuthenticatedUserIdUseCase>(),
          gh<_i33.DeleteCommentUseCase>(),
        ));
    gh.factory<_i72.SearchTypesBloc>(
        () => _i72.SearchTypesBloc(gh<_i65.GetCoversForSearchTypesUseCase>()));
    gh.factory<_i73.RecipeListBloc>(() => _i73.RecipeListBloc(
          gh<_i58.GetRecipesUseCase>(),
          gh<_i18.GetCategoryByIdUseCase>(),
          gh<_i45.GetUserProfileByIdUseCase>(),
          gh<_i55.GetAuthenticatedUserIdUseCase>(),
          gh<_i61.InvalidateRecipesCacheUseCase>(),
          gh<_i29.GetFileUrlUseCase>(),
          gh<_i66.GetRecipeDeletedStreamUseCase>(),
          gh<_i60.GetRecipeChangedStreamUseCase>(),
          gh<_i59.GetRecipeByIdUseCase>(),
        ));
    gh.factory<_i74.CreateRecipeBloc>(() => _i74.CreateRecipeBloc(
          gh<_i62.CreateRecipeUseCase>(),
          gh<_i30.UploadFileUseCase>(),
        ));
    gh.factory<_i75.FollowingListBloc>(() => _i75.FollowingListBloc(
          gh<_i43.GetFollowingUseCase>(),
          gh<_i55.GetAuthenticatedUserIdUseCase>(),
        ));
    gh.factory<_i76.AuthorBloc>(() => _i76.AuthorBloc(
          gh<_i45.GetUserProfileByIdUseCase>(),
          gh<_i38.CheckIsFollowingUseCase>(),
          gh<_i40.FollowUseCase>(),
          gh<_i48.UnfollowUseCase>(),
          gh<_i55.GetAuthenticatedUserIdUseCase>(),
          gh<_i44.GetIsFollowingChangedStreamUseCase>(),
        ));
    gh.factory<_i77.AuthenticationBloc>(() => _i77.AuthenticationBloc(
          gh<_i52.SignInUseCase>(),
          gh<_i54.SignUpUseCase>(),
          gh<_i53.SignOutUseCase>(),
          gh<_i50.IsAuthenticatedUseCase>(),
          gh<_i51.OnIsAuthenticatedChangeUseCase>(),
        ));
    gh.factory<_i78.RecipeBloc>(() => _i78.RecipeBloc(
          gh<_i59.GetRecipeByIdUseCase>(),
          gh<_i45.GetUserProfileByIdUseCase>(),
          gh<_i55.GetAuthenticatedUserIdUseCase>(),
          gh<_i18.GetCategoryByIdUseCase>(),
          gh<_i57.CheckIsRecipeSavedByAuthenticatedUserUseCase>(),
          gh<_i67.SaveRecipeUseCase>(),
          gh<_i68.UnsaveRecipeUseCase>(),
          gh<_i29.GetFileUrlUseCase>(),
          gh<_i40.FollowUseCase>(),
          gh<_i48.UnfollowUseCase>(),
          gh<_i38.CheckIsFollowingUseCase>(),
          gh<_i44.GetIsFollowingChangedStreamUseCase>(),
          gh<_i60.GetRecipeChangedStreamUseCase>(),
        ));
    return this;
  }
}

class _$DotEnvModule extends _i79.DotEnvModule {}

class _$SharedPreferencesModule extends _i80.SharedPreferencesModule {}

class _$SupabaseModule extends _i81.SupabaseModule {}
