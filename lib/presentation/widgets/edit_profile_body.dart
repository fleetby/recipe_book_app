import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_book_app/presentation/blocs/edit_profile/edit_profile_bloc.dart';
import 'package:recipe_book_app/presentation/id_image_provider.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_book_app/presentation/widgets/edit_profile_form.dart';
import 'package:skeletonizer/skeletonizer.dart';

class EditProfileBody extends StatelessWidget {
  EditProfileBody({
    super.key,
  });

  final _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return BlocListener<EditProfileBloc, EditProfileState>(
      listenWhen: (previous, current) =>
          previous.success != current.success ||
          previous.error != current.error,
      listener: (context, state) {
        if (state.error != null) {
          _scaffoldMessengerKey.currentState?.showSnackBar(
            SnackBar(
              content: Text(tr.anErrorOccured),
              showCloseIcon: true,
            ),
          );
        } else if (state.success) {
          _scaffoldMessengerKey.currentState?.showSnackBar(
            SnackBar(
              content: Text(tr.profileUpdated),
              showCloseIcon: true,
            ),
          );
        }
      },
      child: ScaffoldMessenger(
        key: _scaffoldMessengerKey,
        child: Scaffold(
          appBar: AppBar(
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(4),
              child: BlocSelector<EditProfileBloc, EditProfileState, bool>(
                selector: (state) => state.loading,
                builder: (context, loading) => loading
                    ? const LinearProgressIndicator()
                    : const SizedBox.shrink(),
              ),
            ),
          ),
          body: BlocBuilder<EditProfileBloc, EditProfileState>(
            builder: (context, state) {
              return Skeletonizer(
                enabled: state.userProfile == null,
                child: EditProfileForm(
                  initialName: state.userProfile?.name ?? '',
                  oldImage: state.userProfile?.avatar != null
                      ? IdImageProvider(state.userProfile!.avatar!)
                      : null,
                  onSubmit: (result) {
                    context.read<EditProfileBloc>().add(
                          EditProfileSubmit(
                            name: result.name,
                            newAvatar: result.avatarToUpload,
                            deleteAvatar: result.deleteAvatar,
                          ),
                        );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
