import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DotEnvModule {
  @preResolve
  Future<DotEnv> resolve() async {
    await dotenv.load();
    return dotenv;
  }
}
