abstract interface class AuthenticationRepository {
  Future<bool> signIn({
    required String email,
    required String password,
  });

  Future<bool> signUp({
    required String email,
    required String password,
  });

  Future<void> signOut();

  Future<bool> get isAuthenticated;

  Stream<bool> get onIsAuthenticatedChange;

  String? get userId;
  String? get userEmail;
}
