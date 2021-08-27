import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/app.dart';
import 'package:auth_repo/auth_repo.dart';
import 'package:user_repo/user_repo.dart';

void main() {
  runApp(App(
    authRepo: AuthRepo(),
    userRepo: UserRepo(),
  ));
}
