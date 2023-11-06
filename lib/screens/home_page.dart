import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:material_symbols_icons/symbols.dart';

import 'friends_screen/friends_page.dart';
import 'mockup_page.dart';
import 'test_experiment_screen.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

// Main Home Page

class _MainHomePageState extends State<MainHomePage> {
  // List of Pages accessed through currentPage indexing
  final screens = [
    // const MockUpPage(),
    const MyHomePageV2(),
    const MyHomePage(),
    PageTest(),
    FriendsPage(),
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
            icon: Icon(Symbols.home_rounded),
            selectedIcon: Icon(Symbols.home_filled_rounded),
            label: 'Home (Exp)',
            tooltip: 'Return Home',
          ),
          NavigationDestination(
            icon: Icon(Symbols.home_rounded),
            selectedIcon: Icon(Symbols.home_filled_rounded),
            label: 'Home',
            tooltip: 'Return Home',
          ),
          NavigationDestination(
            icon: Icon(Symbols.payments_rounded),
            selectedIcon: Icon(Symbols.payments_rounded),
            label: 'Bills',
            tooltip: 'Bill Splitting',
          ),
          NavigationDestination(
            icon: Icon(Symbols.person_rounded),
            selectedIcon: Icon(Symbols.person_rounded),
            label: 'People',
            tooltip: 'People',
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
