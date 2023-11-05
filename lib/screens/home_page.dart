import 'package:flutter/material.dart';

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
            icon: Icon(Icons.home_sharp),
            selectedIcon: Icon(Icons.home_outlined),
            label: 'Home (Exp)',
            tooltip: 'Return Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.home_sharp),
            selectedIcon: Icon(Icons.home_outlined),
            label: 'Home',
            tooltip: 'Return Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.payments),
            selectedIcon: Icon(Icons.payments_outlined),
            label: 'Bills',
            tooltip: 'Bill Splitting',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            selectedIcon: Icon(Icons.person_outlined),
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
