import 'package:injectable/injectable.dart';
import 'package:recipe_book_app/domain/repositories/authentication_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@Singleton(as: AuthenticationRepository)
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  const AuthenticationRepositoryImpl(this.supabaseClient);

  final SupabaseClient supabaseClient;

  @override
  Future<bool> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final authResponse = await supabaseClient.auth.signInWithPassword(
        email: email,
        password: password,
      );

      return authResponse.session != null;
    } catch (_, __) {
      return false;
    }
  }

  @override
  Future<bool> signUp({
    required String email,
    required String password,
  }) async {
    try {
      final authResponse = await supabaseClient.auth.signUp(
        email: email,
        password: password,
      );

      return authResponse.session != null;
    } catch (_, __) {
      return false;
    }
  }

  @override
  Future<void> signOut() async {
    if (supabaseClient.auth.currentSession != null) {
      await supabaseClient.auth.signOut();
    }
  }

  @override
  Future<bool> get isAuthenticated async {
    return supabaseClient.auth.currentSession != null;
  }

  @override
  Stream<bool> get onIsAuthenticatedChange {
    return supabaseClient.auth.onAuthStateChange
        .map((event) => event.session != null)
        .distinct();
  }

  @override
  String? get userId => supabaseClient.auth.currentUser?.id;

  @override
  String? get userEmail => supabaseClient.auth.currentUser?.email;
}
