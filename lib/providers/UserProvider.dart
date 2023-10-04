import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  String? _username;
  String? get username => _username;

  setUsername(String username) {
    _username = username;
    notifyListeners();
  }
  
}
