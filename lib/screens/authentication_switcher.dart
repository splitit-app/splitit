import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/bill_data_repository.dart';
import '../services/user_data_repository.dart';
import 'authentication/login/login_screen.dart';
import 'authentication/registration/registration_screen.dart';
import 'home_page.dart';

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
      return MultiProvider(
        providers: [
          StreamProvider.value(
              value: context.read<UserDataRepository>().userDataStream, initialData: null),
          StreamProvider.value(
              value: context.read<BillDataRepository>().billDataStream, initialData: null),
        ],
        child: const MainHomePage(),
      );
    }
  }
}
