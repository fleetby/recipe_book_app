import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/presentation/app_router.gr.dart';
import 'package:recipe_book_app/presentation/blocs/following_list/following_list_bloc.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_book_app/presentation/widgets/empty_list_placeholder.dart';
import 'package:recipe_book_app/presentation/widgets/sliver_error_placeholder.dart';
import 'package:recipe_book_app/presentation/widgets/user_profile_avatar.dart';

class SliverFollowingListComponent extends StatelessWidget {
  const SliverFollowingListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return BlocBuilder<FollowingListBloc, FollowingListState>(
      builder: (context, state) {
        if (state.error != null) {
          return SliverErrorPlaceholder(
            retryOnError: () => context.read<FollowingListBloc>().add(
                  const FollowingListEvent.load(invalidateCache: true),
                ),
          );
        }

        if (state.loading) {
          return const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        if (state.followingList.isEmpty) {
          return SliverEmptyListPlaceholder(
            icon: PhosphorIconsRegular.users,
            text: tr.noFollowingYetPlaceholder,
          );
        }

        return SliverList.builder(
          itemCount: state.followingList.length,
          itemBuilder: (context, index) {
            final userProfile = state.followingList[index];
            return ListTile(
              onTap: () =>
                  AuthorRoute(userId: userProfile.userId).push<void>(context),
              leading: UserProfileAvatar(userProfile.avatar),
              title: Text(userProfile.name),
              subtitle: Text(tr.followersCount(userProfile.followers)),
              trailing: const Icon(PhosphorIconsRegular.caretRight),
            );
          },
        );
      },
    );
  }
}
