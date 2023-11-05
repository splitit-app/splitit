import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_bs/utilities/scroll_animations.dart';

import '../../services/authentication_service.dart';
import '../../utilities/fields.dart';

class LoginScreen extends StatelessWidget {
  final PageController _pageController;

  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  LoginScreen({super.key, required PageController pageController})
      : _pageController = pageController;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SvgPicture.asset('assets/login_screen/splitit_logo.svg'),
                    const SizedBox(height: 30),
                    Text(
                      'Log In',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      decoration: textFieldDecoration_filled.copyWith(labelText: 'Email'),
                      controller: _emailController,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: textFieldDecoration_filled.copyWith(labelText: 'Password'),
                      obscureText: true,
                      controller: _passwordController,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () => AuthenticationService().signInWith_EmailAndPassword(
                          _emailController.text, _passwordController.text),
                      child: const Text('Login'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Don\'t have an account?'),
            TextButton(
              onPressed: () => _pageController.animateToPageWithDefaults(1),
              child: const Text('Sign Up'),
            ),
          ],
        ),
      );
}
