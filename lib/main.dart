import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_bs/screens/authentication_controller.dart';
import 'package:project_bs/services/authentication_service.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

//Experiment----
  //TestDatabase testDatabase = TestDatabase();
  //testDatabase.FooBill0();
  //testDatabase.barBill0();
//--------------

  runApp(const SplitItApp());
}

class SplitItApp extends StatelessWidget {
  const SplitItApp({super.key});

  @override
  Widget build(BuildContext context) => StreamProvider.value(
        value: AuthenticationService().hahaha,
        initialData: null,
        child: const AuthenticationController(),
      );
}
