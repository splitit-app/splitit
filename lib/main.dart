import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/authentication/authentication_controller.dart';
import '../services/authentication_service.dart';
import 'firebase_options.dart';

import 'package:project_bs/screens/mockup_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  //runApp(const MockUpPage());
  runApp(const SplitItApp());
}

class SplitItApp extends StatelessWidget {
  const SplitItApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'SplitIt',
        debugShowCheckedModeBanner: false,  // Hides the Debug Banner
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: const Color(0xFF26B645),
          brightness: Brightness.light,
        ),
        home: StreamProvider.value(
          value: AuthenticationService().userAuthState,
          initialData: null,
          child: AuthenticationController(),
        ),
      );
}
