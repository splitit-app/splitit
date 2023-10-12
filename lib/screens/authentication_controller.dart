import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../runtime_models/user/user_data.dart';
import '../screens/mockup_page.dart';
import '../screens/test_experiment_screen.dart';
import '../services/user_data_repository.dart';
import 'login_screen.dart';

class AuthenticationController extends StatelessWidget {
  const AuthenticationController({super.key});

  @override
  Widget build(BuildContext context) {
    User? user = context.watch<User?>();

    return user == null
        ? const LoginScreen()
        : StreamProvider<UserData?>.value(
            value: UserDataRepository(uid: user.uid).userDataStream,
            initialData: null,
            child: const MyHomePage(title: 'BS Test Home Page'),
          );
    //: const MockUpPage();
  }
}
