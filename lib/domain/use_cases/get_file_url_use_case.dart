import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/files_repository.dart';

@singleton
class GetFileUrlUseCase {
  const GetFileUrlUseCase(this.filesRepository);

  final FilesRepository filesRepository;

  Future<String> call(GetFileUrlUseCaseParams params) async {
    return filesRepository.getUrl(params.fileId);
  }
}

class GetFileUrlUseCaseParams {
  const GetFileUrlUseCaseParams(this.fileId);

  final String fileId;
}
