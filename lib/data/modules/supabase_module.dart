import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/data/constants/dot_env_keys.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@module
abstract class SupabaseModule {
  @preResolve
  Future<SupabaseClient> supabaseClient(DotEnv dotenv) async {
    await Supabase.initialize(
      url: dotenv.get(DotEnvKeys.publicSupabaseUrl),
      anonKey: dotenv.get(DotEnvKeys.publicSupabaseAnonKey),
    );

    return Supabase.instance.client;
  }
}
