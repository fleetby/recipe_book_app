import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/authentication_repository.dart';

@injectable
class GetAuthenticatedUserIdUseCase {
  const GetAuthenticatedUserIdUseCase(this.authenticationRepository);

  final AuthenticationRepository authenticationRepository;

  Future<String?> call() async {
    return authenticationRepository.userId;
  }
}
