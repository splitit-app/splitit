import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'screens/test_experiment_screen.dart';

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

  runApp(const MyApp());
  //runApp(const FigmaToCodeApp());
}
