import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/files_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uuid/uuid.dart';

@Singleton(as: FilesRepository)
class FilesRepositoryImpl implements FilesRepository {
  FilesRepositoryImpl(this.supabaseClient);

  final SupabaseClient supabaseClient;
  final uuid = const Uuid();
  static const String _bucketName = 'images';

  /// Returns url even if file is not uploaded yet
  @override
  Future<String> getUrl(String fileId) async {
    return supabaseClient.storage.from(_bucketName).getPublicUrl(fileId);
  }

  @override
  Future<String> uploadFile(File file) async {
    final uid = supabaseClient.auth.currentUser!.id;
    final fileName = uuid.v4();
    final originalFileExt = file.path.split('.').lastOrNull;
    final fileExt = originalFileExt != null ? '.$originalFileExt' : '';
    final path = '$uid/$fileName$fileExt';
    await supabaseClient.storage.from(_bucketName).uploadBinary(
          path,
          file.readAsBytesSync(),
        );

    return path;
  }
}
