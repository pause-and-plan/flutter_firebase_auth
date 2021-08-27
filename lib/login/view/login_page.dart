import 'package:auth_repo/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_auth/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/login/view/login_form.dart';

class LoginPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) {
            return LoginBloc(
              authRepo: RepositoryProvider.of<AuthRepo>(context),
            );
          },
          child: LoginForm(),
        ),
      ),
    );
  }
}
