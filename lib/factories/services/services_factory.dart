import 'package:firebase_auth/firebase_auth.dart';
import 'package:starbucks_flutter/shared/services/auth_service.dart';
import 'package:starbucks_flutter/shared/services/auth_service_firebase.dart';

class ServiceFactory {
  static AuthService<User> createAuthService() {
    return AuthServiceFirebase();
  }
}
