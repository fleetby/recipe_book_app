import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/authentication_repository.dart';

@singleton
class SignUpUseCase {
  const SignUpUseCase(this.authenticationRepository);

  final AuthenticationRepository authenticationRepository;

  Future<bool> call(SignUpUseCaseParams params) async =>
      authenticationRepository.signUp(
        email: params.email,
        password: params.password,
      );
}

class SignUpUseCaseParams {
  const SignUpUseCaseParams({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;
}
