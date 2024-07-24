import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class SharedPreferencesModule {
  @preResolve
  Future<SharedPreferences> sharedPreferences() {
    return SharedPreferences.getInstance();
  }
}
