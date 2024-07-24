import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_book_app/presentation/widgets/user_profile_avatar.dart';

class PostRecipeCommentBar extends StatefulWidget {
  const PostRecipeCommentBar({
    required this.onSubmit,
    this.loading = false,
    this.userAvatarId,
    this.alternateAction,
    super.key,
  });

  final String? userAvatarId;
  final void Function(String text) onSubmit;
  final VoidCallback? alternateAction;
  final bool loading;

  @override
  State<PostRecipeCommentBar> createState() => _PostRecipeCommentBarState();
}

class _PostRecipeCommentBarState extends State<PostRecipeCommentBar> {
  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            UserProfileAvatar(widget.userAvatarId),
            const SizedBox(width: 8),
            Expanded(
              child: TextFormField(
                enabled: !widget.loading,
                validator: (value) => value.isNullOrEmpty ? '' : null,
                readOnly: widget.alternateAction != null,
                onTapAlwaysCalled: widget.alternateAction != null,
                onTap: widget.alternateAction,
                controller: _textController,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  errorStyle:
                      const TextStyle(height: 0, color: Colors.transparent),
                  hintText: tr.addCommentAction,
                  constraints: const BoxConstraints.tightFor(height: 48),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  suffixIcon: widget.loading
                      ? Container(
                          width: 48,
                          height: 48,
                          padding: const EdgeInsets.all(16),
                          alignment: Alignment.center,
                          child: const CircularProgressIndicator(),
                        )
                      : IconButton(
                          padding: EdgeInsets.zero,
                          icon: const Icon(Icons.send),
                          onPressed: () {
                            if (widget.loading) {
                              return;
                            }

                            if (widget.alternateAction != null) {
                              widget.alternateAction!();
                              return;
                            }

                            if (_formKey.currentState!.validate()) {
                              widget.onSubmit(_textController.text);
                              _textController.clear();
                            }
                          },
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
