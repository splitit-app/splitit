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

class SplitItApp extends StatelessWidget {
  const SplitItApp({super.key});

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
            context.watch<UserData?>();
            final billDataRepository = BillDataRepository(read: context.read);

            return MultiProvider(
              providers: [
                Provider.value(value: billDataRepository),
                StreamProvider.value(value: billDataRepository.billDataStream, initialData: null),
              ],
              child: MaterialApp(
                title: 'SplitIt',
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  colorSchemeSeed: const Color(0xFF26B645),
                  useMaterial3: true,
                ),
                home: const AuthenticationSwitcher(),
              ),
            );
          },
        );
      },
    );
  }
}
