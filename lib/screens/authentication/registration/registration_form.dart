import 'package:flutter/material.dart';
import 'package:project_bs/utilities/scroll_animations.dart';
import 'package:provider/provider.dart';

import '../../../services/authentication_service.dart';

class RegistrationForm {
  RegistrationForm({required this.read});

  final Locator read;

  final pageController = PageController();

  final emailFieldController = TextEditingController();
  final passwordFieldController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final nameFieldController = TextEditingController();
  final birthdayFieldController = TextEditingController();
  final quoteFieldController = TextEditingController();

  Future<void> createUser() async {
    //TODO: Check values not null

    read<AuthenticationService>().createUserWith_EmailAndPassword(
      email: emailFieldController.text.trim().toLowerCase(),
      password: passwordFieldController.text,
      username: nameFieldController.text.trim(),
    );
    print('hello');
  }

  Future<void> submitEmailAndPassword() async {
    print(emailFieldController.text);

    // if (await AuthenticationService().isValid_Email(_emailController.text)) {
    await pageController.animateToPageWithDefaults(1);
    // }
  }
}
