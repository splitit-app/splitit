import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_bs/screens/authentication/registration/registration_screen.dart';
import 'package:provider/provider.dart';

import '../../runtime_models/user/user_data.dart';
import '../test_experiment_screen.dart';
import '../../services/user_data_repository.dart';
import 'login_screen.dart';

class AuthenticationController extends StatelessWidget {
  AuthenticationController({super.key});
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    User? user = context.watch<User?>();

    return user == null
        ? PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            children: [
              LoginScreen(pageController: _pageController),
              RegistrationScreen(pageController: _pageController),
            ],
          )
        : StreamProvider<UserData?>.value(
            value: UserDataRepository(uid: user.uid).userDataStream,
            initialData: null,
            child: const MyHomePage(title: 'BS Test Home Page'),
          );
  }
}
