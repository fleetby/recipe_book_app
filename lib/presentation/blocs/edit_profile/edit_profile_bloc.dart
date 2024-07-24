import 'dart:async';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/models/user_profile_model.dart';
import 'package:recipe_book_app/domain/use_cases/create_or_edit_user_profile_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_authenticated_user_id_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/get_user_profile_by_id_use_case.dart';
import 'package:recipe_book_app/domain/use_cases/upload_file_use_case.dart';
import 'package:recipe_book_app/presentation/utils/debug.dart';

part 'edit_profile_bloc.freezed.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';

@injectable
class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  EditProfileBloc(
    this.getAuthenticatedUserIdUseCase,
    this.getUserProfileByIdUseCase,
    this.createOrEditUserProfileUseCase,
    this.uploadFileUseCase,
  ) : super(const EditProfileState(loading: true)) {
    on<EditProfileLoad>(_load);
    on<EditProfileSubmit>(_submit);
  }

  final GetUserProfileByIdUseCase getUserProfileByIdUseCase;
  final GetAuthenticatedUserIdUseCase getAuthenticatedUserIdUseCase;
  final CreateOrEditUserProfileUseCase createOrEditUserProfileUseCase;
  final UploadFileUseCase uploadFileUseCase;

  Future<void> _load(
    EditProfileLoad event,
    Emitter<EditProfileState> emit,
  ) async {
    try {
      emit(const EditProfileState(loading: true));
      final userId = await getAuthenticatedUserIdUseCase();
      if (userId == null) {
        return;
      }
      final userProfile = await getUserProfileByIdUseCase(
        GetUserProfileByIdUseCaseParams(id: userId),
      );
      emit(
        userProfile != null
            ? EditProfileState(userProfile: userProfile)
            : const EditProfileState(),
      );
    } on Exception catch (e, st) {
      debugPrintError(e, st);
      emit(EditProfileState(error: (e, st)));
    }
  }

  Future<void> _submit(
    EditProfileSubmit event,
    Emitter<EditProfileState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          loading: true,
          error: null,
          success: false,
        ),
      );
      final userId = await getAuthenticatedUserIdUseCase();
      if (userId == null) {
        return;
      }
      final newAvatarId = event.newAvatar != null
          ? await uploadFileUseCase(UploadFileUseCaseParams(event.newAvatar!))
          : null;
      final avatarId = newAvatarId ?? state.userProfile?.avatar;
      await createOrEditUserProfileUseCase(
        CreateOrEditUserProfileUseCaseParams(
          name: event.name,
          avatar: event.deleteAvatar ? null : avatarId,
        ),
      );
      emit(state.copyWith(success: true));
    } on Exception catch (e, st) {
      debugPrintError(e, st);
      emit(state.copyWith(error: (e, st)));
    } finally {
      emit(state.copyWith(loading: false));
    }
  }
}
