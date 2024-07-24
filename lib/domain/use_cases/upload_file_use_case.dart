import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/files_repository.dart';

@singleton
class UploadFileUseCase {
  const UploadFileUseCase(this.filesRepository);

  final FilesRepository filesRepository;

  Future<String> call(UploadFileUseCaseParams params) async {
    return filesRepository.uploadFile(params.file);
  }
}

class UploadFileUseCaseParams {
  const UploadFileUseCaseParams(this.file);

  final File file;
}
