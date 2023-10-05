import 'package:firebase_auth/firebase_auth.dart';
import 'package:starbucks_flutter/shared/services/auth_service.dart';

class AuthServiceFirebase implements AuthService<User> {
  @override
  Future<User> createUser(String email, String password) async {
    try {
      final UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak-password") {
        print('The password provided is too weak.');
      } else if (e.code == "email-already-in-use") {
        print('An account already exists for that email.');
      }
      rethrow;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  @override
  Future<User> currentUser() {
    // TODO: implement currentUser
    throw UnimplementedError();
  }

  @override
  Stream<User?> get onAuthStateChanged =>
      FirebaseAuth.instance.authStateChanges();

  @override
  Future<User> signIn(String email, String password) async {
    try {
      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user!;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
