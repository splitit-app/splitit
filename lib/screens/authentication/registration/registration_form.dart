import 'package:flutter/material.dart';
import 'package:project_bs/utilities/scroll_animations.dart';

import '../../../services/authentication_service.dart';

class RegistrationForm {
  final pageController = PageController();

  final emailFieldController = TextEditingController();
  final passwordFieldController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final nameFieldController = TextEditingController();
  final birthdayFieldController = TextEditingController();
  final quoteFieldController = TextEditingController();

  final _authenticationService = AuthenticationService();

  Future<void> createUser() async {
    //TODO: Check values not null

    _authenticationService.createUserWith_EmailAndPassword(
      email: emailFieldController.text,
      password: passwordFieldController.text,
      username: nameFieldController.text,
    );
  }

  Future<void> submitEmailAndPassword() async {
    print(emailFieldController.text);

    // if (await AuthenticationService().isValid_Email(_emailController.text)) {
    pageController.animateToPageWithDefaults(1);
    // }
  }
}
