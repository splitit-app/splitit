import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'authentication/login/login_screen.dart';
import 'authentication/registration/registration_screen.dart';
import 'home/home_page.dart';

class AuthenticationSwitcher extends StatelessWidget {
  const AuthenticationSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.watch<User?>() == null) {
      final pageController = PageController();

      return ListenableProvider.value(
        value: pageController,
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: [
            LoginScreen(),
            RegistrationScreen(),
          ],
        ),
      );
    } else {
      return const MainHomePage();
    }
  }
}
