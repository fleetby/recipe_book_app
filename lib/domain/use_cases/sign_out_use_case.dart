import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/authentication_repository.dart';

@singleton
class SignOutUseCase {
  const SignOutUseCase(this.authenticationRepository);

  final AuthenticationRepository authenticationRepository;

  Future<void> call() async {
    await authenticationRepository.signOut();
  }
}
