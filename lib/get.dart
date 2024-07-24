import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/get.config.dart';

final get = GetIt.instance;

@injectableInit
Future<void> registerDependencies() async {
  await get.init();
}
