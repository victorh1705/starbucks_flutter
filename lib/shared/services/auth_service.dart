import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthService<T> {
  Future<T> signIn(String email, String password);
  Future<T> createUser(String email, String password);
  Future<void> signOut();
  Stream<T?> get onAuthStateChanged;
  Future<T> currentUser();
}
