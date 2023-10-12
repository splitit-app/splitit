import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_bs/screens/test_experiment_screen.dart';
import 'package:provider/provider.dart';

import 'login_screen.dart';

class AuthenticationController extends StatelessWidget {
  const AuthenticationController({super.key});

  @override
  Widget build(BuildContext context) => context.watch<User?>() == null
      ? const LoginScreen()
      : const MyHomePage(title: 'BS Test Home Page');
}
