import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_book_app/presentation/view_models/recipe_comment_view_model.dart';
import 'package:recipe_book_app/presentation/widgets/user_profile_avatar.dart';

class RecipeCommentItem extends StatelessWidget {
  const RecipeCommentItem(
    this.recipeComment, {
    this.onOpenUserProfile,
    this.onDeleteComment,
    super.key,
  });

  final RecipeCommentViewModel recipeComment;
  final void Function(String userId)? onOpenUserProfile;
  final void Function(int commentId)? onDeleteComment;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () => showModalBottomSheet<void>(
          clipBehavior: Clip.antiAlias,
          context: context,
          builder: (context) {
            return _CommentMenu(
              recipeComment: recipeComment,
              onOpenUserProfile: onOpenUserProfile,
              onDeleteComment: onDeleteComment,
            );
          },
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserProfileAvatar(recipeComment.userAvatarId),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recipeComment.userProfileName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      recipeComment.text,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CommentMenu extends StatelessWidget {
  const _CommentMenu({
    required this.recipeComment,
    required this.onOpenUserProfile,
    required this.onDeleteComment,
  });

  final void Function(String userId)? onOpenUserProfile;
  final RecipeCommentViewModel recipeComment;
  final void Function(int commentId)? onDeleteComment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tr = AppLocalizations.of(context);
    return ListView(
      padding: const EdgeInsets.all(16),
      shrinkWrap: true,
      children: [
        ListTile(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          leading: const Icon(PhosphorIconsRegular.user),
          title: Text(tr.openProfileAction),
          onTap: () {
            Navigator.of(context).pop();
            onOpenUserProfile?.call(recipeComment.userId);
          },
        ),
        if (onDeleteComment != null)
          ListTile(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            leading: Icon(
              PhosphorIconsRegular.trash,
              color: theme.colorScheme.error,
            ),
            title: Text(
              tr.deleteCommentAction,
              style: TextStyle(color: theme.colorScheme.error),
            ),
            onTap: () async {
              final confirm = await showDialog<bool>(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text(tr.deleteCommentDialogTitle),
                  content: Text(tr.deleteCommentDialogMessage),
                  actions: [
                    TextButton(
                      child: Text(tr.cancelAction),
                      onPressed: () => Navigator.of(context).pop(false),
                    ),
                    TextButton(
                      child: Text(tr.deleteAction),
                      onPressed: () => Navigator.of(context).pop(true),
                    ),
                  ],
                ),
              );
              if (context.mounted && confirm == true) {
                Navigator.of(context).pop();
                onDeleteComment!.call(recipeComment.id);
              }
            },
          ),
      ],
    );
  }
}
