import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../utilities/fields.dart';
import '../../../utilities/scroll_animations.dart';
import 'login_form.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final loginForm = LoginForm(read: context.read);

    return Scaffold(
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
                  const SizedBox(height: 20),
                  Text(
                    'Log In',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration:
                    
                        textFieldDecoration_filled.copyWith(labelText: 'Email'),
                    controller: loginForm.emailFieldController,
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: textFieldDecoration_filled.copyWith(
                        labelText: 'Password'),
                    obscureText: true,
                    controller: loginForm.passwordFieldController,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () async {
                      await loginForm.login().then((auth) {
                        // print("test : $auth");
                        if (auth.toString() == "INVALID_LOGIN_CREDENTIALS") {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content:
                                      Text("Email or Password incorrect!")));
                        } else if (auth.toString() == "invalid-email") {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Invalid Email!")));
                        }
                      });
                    },
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
            onPressed: () =>
                context.read<PageController>().animateToPageWithDefaults(1),
            child: const Text('Sign Up'),
          ),
        ],
      ),
    );
  }
}
