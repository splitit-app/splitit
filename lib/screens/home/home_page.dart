import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../friends_screen/friends_page.dart';
import 'home_screen.dart';
// import 'mockup_page.dart';
// import 'test_experiment_screen.dart';
import '../bill/view_bills.dart';
import '../../utilities/bill utilities/bill_info.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

// Main Home Page

class _MainHomePageState extends State<MainHomePage> {
  // List of Pages accessed through currentPage indexing
  final screens = [
    const MainHomeScreen(),
    const ViewBillHistory(),
    FriendsPage(),
    const BillInfo(billName: "McDonalds", billDate: "1999-09-19", billTotal: 125.0),
  ];

  int currentPage = 0; // Keeps track of the Current Page Index.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentPage],

      // Bottom Navigation Bar:
      bottomNavigationBar: NavigationBar(
        backgroundColor: Theme.of(context)
            .colorScheme
            .surfaceVariant, // Theme of the App (line 32) defines the background color
        indicatorColor: Theme.of(context).colorScheme.tertiary,
        labelBehavior: NavigationDestinationLabelBehavior
            .alwaysShow, // Only shows the label of the selected icon
        animationDuration: const Duration(milliseconds: 1500),
        height: 70.0,

        destinations: const [
          // Lists of Destinations
          NavigationDestination(
            icon: Icon(MaterialSymbols.home_work),
            selectedIcon: Icon(MaterialSymbols.home_work_filled),
            label: 'Home (Exp)',
            tooltip: 'Return Home',
          ),
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
          NavigationDestination(
            icon: Icon(Icons.warning),
            selectedIcon: Icon(Icons.warning),
            label: 'Test',
            tooltip: 'Test',
          ),
        ],
        onDestinationSelected: (int value) {
          // On Navigation Selected, update the index
          setState(() => currentPage = value);
        },
        selectedIndex:
            currentPage, // Selected Index is updated (Displays the indicator for the selected Icon)
      ),
    );
  }
}
