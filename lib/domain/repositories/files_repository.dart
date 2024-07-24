import 'dart:io';

abstract interface class FilesRepository {
  /// Returns file id
  Future<String> uploadFile(File file);

  Future<String> getUrl(String fileId);
}
