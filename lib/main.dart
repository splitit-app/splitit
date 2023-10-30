import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_bs/services/bill_data_repository.dart';
import 'package:project_bs/services/user_data_repository.dart';
import 'package:provider/provider.dart';

import 'screens/authentication_switcher.dart';
import '../services/authentication_service.dart';
import 'firebase_options.dart';

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
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          Provider.value(value: UserDataRepository()),
          Provider.value(value: BillDataRepository(uid: ""))
        ], //imagine the param is at the func
        child: MaterialApp(
          title: 'SplitIt',
          debugShowCheckedModeBanner: false, // Hides the Debug Banner
          theme: ThemeData(
            colorSchemeSeed: const Color(0xFF26B645),
            useMaterial3: true,
          ),
          home: StreamProvider.value(
            value: AuthenticationService().userAuthState,
            initialData: null,
            child: AuthenticationSwitcher(),
          ),
        ),
      );
}
