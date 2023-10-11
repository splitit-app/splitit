import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_bs/screens/test_figma_login_page.dart';
import 'package:provider/provider.dart';

class AuthenticationController extends StatelessWidget {
  const AuthenticationController({super.key});

  @override
  Widget build(BuildContext context) => context.watch<User?>() == null
      ? const FigmaToCodeApp()
      : const Placeholder();
}
