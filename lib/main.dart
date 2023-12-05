import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'runtime_models/user/user_data.dart';
import 'screens/authentication_switcher.dart';
import 'services/authentication_service.dart';
import 'services/bill_data_repository.dart';
import 'services/user_data_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  //runApp(const MockUpPage());
  runApp(const SplitItApp());
}

class SplitItApp extends StatefulWidget {
  const SplitItApp({super.key});

  @override
  State<SplitItApp> createState() => _SplitItAppState();
}

class _SplitItAppState extends State<SplitItApp> {
  final lightTheme = ThemeData(
    colorSchemeSeed: const Color.fromRGBO(38, 182, 69, 1),
    useMaterial3: true,
    brightness: Brightness.light,
  );

  final darkTheme = ThemeData(
    colorSchemeSeed: const Color.fromRGBO(38, 182, 69, 1),
    useMaterial3: true,
    brightness: Brightness.dark,
  );

  @override
  Widget build(BuildContext context) {
    final authenticationService = AuthenticationService();

    return MultiProvider(
      providers: [
        Provider.value(value: authenticationService),
        StreamProvider.value(value: authenticationService.userAuthState, initialData: null),
      ],
      builder: (context, child) {
        context.watch<User?>();
        final userDataRepository = UserDataRepository(read: context.read);

        return MultiProvider(
          providers: [
            Provider.value(value: userDataRepository),
            StreamProvider.value(value: userDataRepository.userDataStream, initialData: null),
          ],
          builder: (context, child) {
            final userData = context.watch<UserData?>();
            final billDataRepository = BillDataRepository(read: context.read);

            return MultiProvider(
              providers: [
                Provider.value(value: billDataRepository),
                StreamProvider.value(value: billDataRepository.billListStream, initialData: null),
              ],
              child: MaterialApp(
                title: 'SplitIt',
                debugShowCheckedModeBanner: false,
                theme: lightTheme,
                darkTheme: darkTheme,
                themeMode: userData == null ? ThemeMode.system : userData.privateProfile.themeMode,
                home: const AuthenticationSwitcher(),
              ),
            );
          },
        );
      },
    );
  }
}
