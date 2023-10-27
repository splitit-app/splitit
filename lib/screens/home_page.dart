import 'package:flutter/material.dart';
import 'package:project_bs/screens/friends_screen/friends_page.dart';
import 'package:project_bs/screens/mockup_page.dart';
import 'package:project_bs/screens/test_experiment_screen.dart';
import '../一experiments/test_firebase.dart';

class MainHomePage extends StatefulWidget {
  final String title;
  const MainHomePage({super.key, required this.title});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

// Main Home Page


class _MainHomePageState extends State<MainHomePage> {

  // List of Pages accessed through currentPage indexing
  final screens = [
    const MyHomePage(title: "BS Home Page"),
    // const Center(child: Text("Bills, WIP", style:  TextStyle(fontSize: 65.0))),
    // const MockUpPage(),
    PageTest(),
    const FriendsPage(),
  ];

  int currentPage = 0; // Keeps track of the Current Page Index.
  TestDatabase testDatabase = TestDatabase();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentPage],

      // Bottom Navigation Bar:
      bottomNavigationBar: NavigationBar(
        backgroundColor: Theme.of(context).colorScheme.surfaceVariant, // Theme of the App (line 32) defines the background color
        indicatorColor: Theme.of(context).colorScheme.tertiary,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected, // Only shows the label of the selected icon
        // height: 70.0,

        destinations: const [
          // Lists of Destinations
          NavigationDestination(
            icon: Icon(Icons.home),
            selectedIcon: Icon(Icons.home_outlined),
            label: 'Home',
            tooltip: 'Return Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.attach_money),
            selectedIcon: Icon(Icons.money_off),
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
          setState(() {
            // Updates the State of the Current Page
            currentPage = value;
          });
        },
        selectedIndex: currentPage, // Selected Index is updated (Displays the indicator for the selected Icon)
      ),
    );
  }
}