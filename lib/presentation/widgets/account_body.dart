import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/get.dart';
import 'package:recipe_book_app/presentation/app_router.gr.dart';
import 'package:recipe_book_app/presentation/blocs/account/account_bloc.dart';
import 'package:recipe_book_app/presentation/blocs/authentication/authentication_bloc.dart';
import 'package:recipe_book_app/presentation/blocs/following_list/following_list_bloc.dart';
import 'package:recipe_book_app/presentation/blocs/recipe_list/recipe_list_bloc.dart';
import 'package:recipe_book_app/presentation/id_image_provider.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_book_app/presentation/widgets/empty_list_placeholder.dart';
import 'package:recipe_book_app/presentation/widgets/logo.dart';
import 'package:recipe_book_app/presentation/widgets/sign_form.dart';
import 'package:recipe_book_app/presentation/widgets/sliver_following_list_component.dart';
import 'package:recipe_book_app/presentation/widgets/sliver_recipe_list_component.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AccountBody extends StatelessWidget {
  AccountBody({
    super.key,
  });

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        switch (state) {
          case AuthenticationSignedIn():
            context.read<AccountBloc>().add(const AccountLoad());
          case AuthenticationError():
            ScaffoldMessenger.of(_scaffoldKey.currentContext!).showSnackBar(
              SnackBar(
                content: Text(tr.authenticationError),
                showCloseIcon: true,
              ),
            );
          default:
        }
      },
      builder: (context, state) => Scaffold(
        key: _scaffoldKey,
        appBar: state is! AuthenticationSignedIn
            ? AppBar(
                leading: const Logo(),
                titleSpacing: 0,
                title: Text(tr.appName),
                // centerTitle: true,
                actions: const [
                  _SettingsActionIcon(),
                  SizedBox(width: 8),
                ],
              )
            : null,
        body: switch (state) {
          AuthenticationSignedIn() => const _SignedInAccount(),
          AuthenticationLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
          _ => SignForm(
              SignFormType.signIn,
              onSignInSubmit: (email, password) =>
                  context.read<AuthenticationBloc>().add(
                        AuthenticationSignIn(
                          email: email,
                          password: password,
                        ),
                      ),
              onSignUpSubmit: (email, password) =>
                  context.read<AuthenticationBloc>().add(
                        AuthenticationSignUp(
                          email: email,
                          password: password,
                        ),
                      ),
            ),
        },
      ),
    );
  }
}

class _SignedInAccount extends StatefulWidget {
  const _SignedInAccount();

  @override
  State<_SignedInAccount> createState() => _SignedInAccountState();
}

class _SignedInAccountState extends State<_SignedInAccount>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tr = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          width: 24,
          height: 24,
          alignment: Alignment.center,
          child: BlocSelector<AccountBloc, AccountState, String?>(
            selector: (state) => state.userProfile?.avatar,
            builder: (context, avatar) => CircleAvatar(
              backgroundImage: avatar != null ? IdImageProvider(avatar) : null,
            ),
          ),
        ),
        titleSpacing: 8,
        title: GestureDetector(
          onTap: () {
            final userId =
                context.read<AccountBloc>().state.userProfile?.userId;
            if (userId != null) {
              AuthorRoute(userId: userId).push<void>(context);
            }
          },
          child: BlocBuilder<AccountBloc, AccountState>(
            builder: (context, state) {
              return Skeletonizer(
                enabled: state.loading,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      state.userProfile?.name ?? 'John Doe',
                      style: theme.textTheme.titleLarge,
                    ),
                    Text(
                      state.userEmail ?? 'example@example.com',
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => const EditProfileRoute().push<void>(context),
            icon: const Icon(PhosphorIconsRegular.pencil),
          ),
          const _SettingsActionIcon(),
          IconButton(
            onPressed: () async {
              final confirm = await showDialog<bool>(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(tr.signOutDialogTitle),
                    content: Text(tr.signOutDialogMessage),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context, false),
                        child: Text(tr.cancelAction),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, true),
                        child: Text(tr.signOutAction),
                      ),
                    ],
                  );
                },
              );

              if (context.mounted && (confirm ?? false)) {
                context
                    .read<AuthenticationBloc>()
                    .add(const AuthenticationSignOut());
              }
            },
            icon: const Icon(PhosphorIconsRegular.signOut),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: tr.myRecipesTab),
            Tab(text: tr.followingTab),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          BlocProvider(
            create: (context) => get<RecipeListBloc>()
              ..add(
                const RecipeListLoad(
                  params: RecipeListParams(onlyMyRecipes: true),
                ),
              ),
            child: BlocBuilder<RecipeListBloc, RecipeListState>(
              builder: (context, state) {
                return RefreshIndicator(
                  onRefresh: () async {
                    _reloadProfileIfNeeded();
                    context.read<RecipeListBloc>().add(
                          const RecipeListLoad(
                            params: RecipeListParams(
                              onlyMyRecipes: true,
                              invalidateCache: true,
                            ),
                          ),
                        );
                  },
                  child: CustomScrollView(
                    key: UniqueKey(),
                    slivers: [
                      SliverRecipeListComponent(
                        emptyPlaceholder: SliverEmptyListPlaceholder(
                          icon: PhosphorIconsRegular.listPlus,
                          text: tr.noCreatedRecipesPlaceholder,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          BlocProvider(
            create: (context) =>
                get<FollowingListBloc>()..add(const FollowingListEvent.load()),
            child: BlocBuilder<FollowingListBloc, FollowingListState>(
              builder: (context, state) => RefreshIndicator(
                onRefresh: () async {
                  _reloadProfileIfNeeded();
                  context.read<FollowingListBloc>().add(
                        const FollowingListEvent.load(invalidateCache: true),
                      );
                },
                child: CustomScrollView(
                  key: UniqueKey(),
                  slivers: const [
                    SliverFollowingListComponent(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _reloadProfileIfNeeded() {
    final authenticationState = context.read<AuthenticationBloc>().state;
    final accountState = context.read<AccountBloc>().state;

    if (authenticationState is! AuthenticationSignedIn) {
      context
          .read<AuthenticationBloc>()
          .add(const AuthenticationEvent.preload());
    } else if (accountState.error != null) {
      context.read<AccountBloc>().add(const AccountEvent.load());
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

class _SettingsActionIcon extends StatelessWidget {
  const _SettingsActionIcon();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => const SettingsRoute().push<void>(context),
      icon: const Icon(PhosphorIconsRegular.gear),
    );
  }
}
