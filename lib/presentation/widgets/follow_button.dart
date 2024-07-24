import 'package:flutter/material.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';

class FollowButton extends StatelessWidget {
  const FollowButton({
    required this.followed,
    required this.onFollow,
    required this.onUnfollow,
    super.key,
  });

  final bool followed;
  final VoidCallback onFollow;
  final VoidCallback onUnfollow;

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return followed
        ? FilledButton.tonal(
            onPressed: onUnfollow,
            child: Text(tr.unfollowAction),
          )
        : FilledButton(
            onPressed: onFollow,
            child: Text(tr.followAction),
          );
  }
}
