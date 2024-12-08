import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  /// Name validation condition
  String _name = "";
  String get name => _name;

  void updateName(String newName) {
    _name = newName;
    notifyListeners();
  }

  bool get isNameValid => _name.length >= 6;

  /// Email validation
  String _email = '';
  bool _isEmailValid = false;

  String get email => _email;
  bool get isEmailValid => _isEmailValid;

  void setEmail(String value) {
    _email = value;
    _isEmailValid = _validateEmail(_email);
    notifyListeners();
  }

  bool _validateEmail(String email) {
    final emailRegex = RegExp(
      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
    );
    return emailRegex.hasMatch(email);
  }

  /// Password validation
  String _password = '';
  bool _isPasswordValid = false;

  String get password => _password;
  bool get isPasswordValid => _isPasswordValid;

  void setPassword(String value) {
    _password = value;
    _isPasswordValid = _validatePassword(_password);
    notifyListeners();
  }

  bool _validatePassword(String password) {
    final passwordRegex = RegExp(
      r'^(?=.*[!@#$%^&*(),.?":{}|<>]).{6,}$',
    );
    return passwordRegex.hasMatch(password);
  }
  //bottom navigation bar
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void updateIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
  bool isFavorite = false;

  void toggleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
