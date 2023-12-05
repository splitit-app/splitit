import 'package:flutter/material.dart';
import 'package:project_bs/utilities/scroll_animations.dart';
import 'package:provider/provider.dart';

import '../../../runtime_models/user/private_profile.dart';
import '../../../runtime_models/user/public_profile.dart';
import '../../../runtime_models/user/user_data.dart';
import '../../../services/authentication_service.dart';
import '../../../services/user_data_repository.dart';

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
    FocusManager.instance.primaryFocus?.unfocus();

    //TODO: Check values not null

    String email = emailFieldController.text.trim().toLowerCase();
    String password = passwordFieldController.text;
    String username = nameFieldController.text.trim();

    final user = await read<AuthenticationService>().createUserWith_EmailAndPassword(
      email: email,
      password: password,
    );

    if (user == null) return;

    //Construct new user
    await read<UserDataRepository>().pushUserData(UserData(
      uid: user.uid,
      publicProfile: PublicProfile(uid: user.uid, name: username),
      privateProfile: PrivateProfile(themeMode: ThemeMode.light),
      registeredFriends: List.empty(),
      nonRegisteredFriends: {},
    ));
  }

  Future<void> submitEmailAndPassword() async {
    FocusManager.instance.primaryFocus?.unfocus();

    // if (await AuthenticationService().isValid_Email(_emailController.text)) {
    await pageController.animateToPageWithDefaults(1);
    // }
  }
}
