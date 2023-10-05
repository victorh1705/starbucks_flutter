import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:starbucks_flutter/shared/services/auth_service.dart';

class HomePageController extends ChangeNotifier {
  int notificationsCount = 2;

  AuthService<User> authService;

  HomePageController(
    this.authService,
  );

  void logout() {
    authService.signOut();
  }
}
