import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../bill/view_bills.dart';
import '../friends_screen/friends_page.dart';
import 'home_screen.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class RootForm {
  int currentPageId = 0;

  final screens = [
    const MainHomeScreen(),
    const ViewBillHistory(),
    FriendsPage(),
    //const BillInfo(billName: "McDonalds", billDate: "1999-09-19", billTotal: 125.0),
  ];
}

class _MainHomePageState extends State<MainHomePage> {
  final rootForm = RootForm();

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: rootForm,
      builder: (context, child) {
        //context.watch<RootForm>();

        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
          body: IndexedStack(
            index: rootForm.currentPageId,
            children: rootForm.screens,
          ),

          bottomNavigationBar: NavigationBar(
            backgroundColor: Theme.of(context)
                .colorScheme
                .surfaceVariant, // Theme of the App (line 32) defines the background color
            indicatorColor: Theme.of(context).colorScheme.tertiary,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
            animationDuration: const Duration(milliseconds: 1500),
            height: 70.0,

            destinations: const [
              NavigationDestination(
                icon: Icon(Symbols.home_rounded),
                selectedIcon: Icon(MaterialSymbols.home_filled),
                label: 'Home',
                tooltip: 'Return Home',
              ),
              NavigationDestination(
                icon: Icon(MaterialSymbols.payments_outlined),
                selectedIcon: Icon(MaterialSymbols.payments_filled),
                label: 'Bills',
                tooltip: 'Bill Splitting',
              ),
              NavigationDestination(
                icon: Icon(MaterialSymbols.person_outlined),
                selectedIcon: Icon(MaterialSymbols.person_filled_filled_sharp),
                label: 'People',
                tooltip: 'People',
              ),
              // NavigationDestination(
              //   icon: Icon(Icons.warning),
              //   selectedIcon: Icon(Icons.warning),
              //   label: 'Test',
              //   tooltip: 'Test',
              // ),
            ],
            onDestinationSelected: (value) {
              setState(() => rootForm.currentPageId = value);
            },
            selectedIndex: context.watch<RootForm>().currentPageId,
          ),
        );
      },
    );
  }
}
