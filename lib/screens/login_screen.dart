import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_bs/services/authentication_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email = '', _password = '';

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SvgPicture.asset('assets/login_screen/splitit_logo.svg'),
                    const SizedBox(height: 30),
                    TextFormField(
                      decoration: const InputDecoration(hintText: 'Email'),
                      onChanged: (value) => _email = value,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: const InputDecoration(hintText: 'Password'),
                      onChanged: (value) => _password = value,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF26B645)),
                      onPressed: () => AuthenticationService()
                          .signInWith_EmailAndPassword(_email, _password),
                      child: const Text('Login'),
                    ),
                  ]),
            ),
          ),
        ),
      );
}
