import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/authentication_repository.dart';

@singleton
class OnIsAuthenticatedChangeUseCase {
  const OnIsAuthenticatedChangeUseCase(this.authenticationRepository);

  final AuthenticationRepository authenticationRepository;

  Stream<bool> call() {
    return authenticationRepository.onIsAuthenticatedChange;
  }
}
