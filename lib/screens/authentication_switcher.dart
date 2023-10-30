import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_bs/screens/authentication/registration/registration_screen.dart';
import 'package:project_bs/screens/home_page.dart';
import 'package:provider/provider.dart';

import '../runtime_models/user/user_data.dart';
import '../services/user_data_repository.dart';
import 'authentication/login_screen.dart';

class AuthenticationSwitcher extends StatelessWidget {
  AuthenticationSwitcher({super.key});
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    User? user = context.watch<User?>();

    if (user == null) {
      return PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          LoginScreen(pageController: _pageController),
          RegistrationScreen(pageController: _pageController),
        ],
      );
    } else {
      final userDataRepository = context.read<UserDataRepository>();
      userDataRepository.uid = user.uid;
      return StreamProvider<UserData?>.value(
        value: userDataRepository.userDataStream,
        initialData: null,
        child: const MainHomePage(),
      );
    }
  }
}
