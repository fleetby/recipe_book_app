import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/authentication_repository.dart';

@singleton
class IsAuthenticatedUseCase {
  const IsAuthenticatedUseCase(this.authenticationRepository);

  final AuthenticationRepository authenticationRepository;

  Future<bool> call() async => authenticationRepository.isAuthenticated;
}
