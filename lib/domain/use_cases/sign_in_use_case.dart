import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/authentication_repository.dart';

@singleton
class SignInUseCase {
  const SignInUseCase(this.authenticationRepository);

  final AuthenticationRepository authenticationRepository;

  Future<bool> call(SignInUseCaseParams params) async =>
      authenticationRepository.signIn(
        email: params.email,
        password: params.password,
      );
}

class SignInUseCaseParams {
  const SignInUseCaseParams({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;
}
