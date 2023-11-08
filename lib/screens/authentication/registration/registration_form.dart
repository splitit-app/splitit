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
    //TODO: Check values not null

    String email = emailFieldController.text.trim().toLowerCase();
    String password = passwordFieldController.text;
    String username = nameFieldController.text.trim();

    String? emailError = validateEmail(email);
    String? passwordError = validatePassword(password);
    String? usernameError = validateUsername(username);

if (emailError != null || passwordError != null) {
  // Display validation errors
  if (emailError != null) {
    print(emailError);
  }

if (passwordError != null) {
    print(passwordError);
  }
} 
if (usernameError != null) {
  // Display validation error
    print(usernameError);
} else {
  // Proceed with user registration
}


    final user = await read<AuthenticationService>().createUserWith_EmailAndPassword(
      email: email,
      password: password,
    );

    if (user == null) return;

    //Construct new user
    await read<UserDataRepository>().pushUserData(UserData(
      uid: user.uid,
      publicProfile: PublicProfile(uid: user.uid, name: username),
      privateProfile: PrivateProfile(themeData: ThemeData.light()),
      registeredFriends: List.empty(),
      nonRegisteredFriends: List.empty(),
    ));

    print('hellooo');
  }

  Future<void> submitEmailAndPassword() async {
    print(emailFieldController.text);

    // if (await AuthenticationService().isValid_Email(_emailController.text)) {
    await pageController.animateToPageWithDefaults(1);
    // }
  }
}

// Email validator
String? validateEmail(String email) {
  // Regular expression to validate email addresses
  final emailRegex = RegExp(r'^[\w-]+(.[\w-]+)*@[\w-]+(.[\w-]+)+$');

  if (email.isEmpty) {
    return 'Email is required';
  } else if (!emailRegex.hasMatch(email)) {
    return 'Invalid email format';
  }

  return null; // No validation errors
}

// Password validator
String? validatePassword(String password) {
  if (password.isEmpty) {
    return 'Password is required';
  } else if (password.length < 6) {
    return 'Password must be at least 6 characters long';
  }

  return null; // No validation errors
}

//Username validator
String? validateUsername(String username) {
  if (username.isEmpty) {
    return 'Username is required';
  // } else if (username.length < 6) {
  //   return '';
  // } else if (username.length > 6) {
  //   return '';
  // } else if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(username)) {
  //   return 'Username can only contain letters, numbers, and underscores';
   }

  return null;  
}