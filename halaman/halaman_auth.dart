import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  void login(String email, String password) {
    // Dummy login logic
    if (email == 'test@example.com' && password == 'password') {
      _isAuthenticated = true;
      notifyListeners();
    }
  }

  void logout() {
    _isAuthenticated = false;
    notifyListeners();
  }

  void signup(String email, String password) {
    // Dummy signup logic
    _isAuthenticated = true;
    notifyListeners();
  }
}
