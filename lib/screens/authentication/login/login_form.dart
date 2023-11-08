import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../services/authentication_service.dart';

class LoginForm {
  LoginForm({required this.read});

  final emailFieldController = TextEditingController();
  final passwordFieldController = TextEditingController();

  final Locator read;

  String toReturn = "";

  Future<String> login() async {
  // Future<void> login() async {

    //TODO: Check values not null

    const Center(child: CircularProgressIndicator());

    await read<AuthenticationService>().signInWith_EmailAndPassword(
      emailFieldController.text.trim().toLowerCase(),
      passwordFieldController.text,
    ).then((auth){
      // print("form: $auth");
      toReturn = auth;
    });
    return toReturn;
  }
}
