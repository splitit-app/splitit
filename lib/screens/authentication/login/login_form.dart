import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../services/authentication_service.dart';

class LoginForm {
  LoginForm({required this.read});

  final emailFieldController = TextEditingController();
  final passwordFieldController = TextEditingController();

  final Locator read;

  Future<void> login() async {
    //TODO: Check values not null

    read<AuthenticationService>().signInWith_EmailAndPassword(
      emailFieldController.text.trim().toLowerCase(),
      passwordFieldController.text,
    );
  }
}
