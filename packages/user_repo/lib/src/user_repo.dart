import 'dart:async';

import 'package:uuid/uuid.dart';

import 'models/models.dart';

class UserRepo {
  User? _user;

  Future<User?> getUser() async {
    if (_user != null) {
      return _user;
    } else {
      return Future.delayed(
        const Duration(milliseconds: 300),
        () => _user = User(const Uuid().v4()),
      );
    }
  }
}
