import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../runtime_models/bill/bill_data.dart';
import '../services/authentication_service.dart';
import '../utilities/bill_cards.dart';
import '../utilities/bill_cards_v2.dart';
import '../一experiments/test_firebase.dart';

class MyHomePage extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 222222; //Change to huge number from origin of 0.

  final _formKey = GlobalKey<FormState>();

  int _currentPage = 0; // Keeps track of the Current Page Index.

  //Experiment----
  TestDatabase testDatabase = TestDatabase();
  //--------------

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.

        backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
        // backgroundColor: const Color(0xFF85DCB0),

        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: [
          ElevatedButton(
            onPressed: AuthenticationService().signOut,
            child: const Text('Log out'),
          )
        ],
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // User Inputs:

            // Bill Name:
            ExpansionTile(
              // Expansion List Tile
              title: const Center(child: Text("Inputs")),
              subtitle: const Text("Click to Expand"),
              initiallyExpanded: true,
              // backgroundColor: Colors.red,
              // collapsedBackgroundColor: Colors.black,

              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          // Validator receives the user input
                          validator: (billNameValue) {
                            // Return value variable (The information entered).
                            if (billNameValue == null ||
                                billNameValue.isEmpty) {
                              return "Please the Bill Name";
                            }
                            // return null;
                            return billNameValue;
                          },
                          decoration: const InputDecoration(
                              labelText: "Bill Name",
                              hintText: "Mickie Deez Nuts",
                              prefixIcon: Icon(Icons.edit)),
                        ),

                        // Bill Total:
                        TextFormField(
                          // Validator receives the user input
                          validator: (billTotalValue) {
                            // Return value variable (The information entered).
                            if (billTotalValue == null ||
                                billTotalValue.isEmpty) {
                              return "Please enter the Bill Total";
                            }
                            // return null;
                            return billTotalValue;
                          },
                          decoration: const InputDecoration(
                              labelText: "Bill Total",
                              hintText: "5 Smackers",
                              prefixIcon: Icon(Icons.attach_money)),
                        ),

                        // Bill Date:
                        TextFormField(
                          // Validator receives the user input
                          validator: (billDateValue) {
                            // Return value variable (The information entered).
                            if (billDateValue == null ||
                                billDateValue.isEmpty) {
                              return "Please enter the Bill Date";
                            }
                            // return null;
                            return billDateValue;
                          },
                          decoration: const InputDecoration(
                              labelText: "Bill Date",
                              hintText: "October 45th, 1945",
                              prefixIcon: Icon(Icons.date_range)),
                        ),
                        const SizedBox(height: 15.0),
                        // Submit Button
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // If validate is true, then trigger snackbar.
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Center(
                                    child: Text("Submitted"),
                                  ),
                                  backgroundColor: Colors.red,
                                  closeIconColor: Colors.black,
                                  showCloseIcon: true,
                                ),
                              );
                            }
                          },
                          child: const Text("Enter",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Text("Transaction History",
                style: Theme.of(context).textTheme.headlineMedium),
            const Text("Displaying Most Recent",
                style: TextStyle(fontSize: 20)),

            // Data from Database:
            StreamBuilder<List<BillData>>(
                stream: testDatabase.bills,
                builder: (context, snapshot) {
                  return snapshot.hasData
                      ? Expanded(
                          // Makes the ListView scrollable.
                          child: ListView.separated(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              shrinkWrap: true,
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                                // BillData bill = snapshot.data![index];
                                BillData bill = snapshot.data![snapshot
                                        .data!.length -
                                    1 -
                                    index]; // Displays in Reverse (Most Recent on top)
                                // return Text(
                                //     'T:${bill.dateTime.toString()} N:${bill.name} \$:${bill.totalSpent}');

                                // return BillCards(
                                //   billName:
                                //       "${bill.name} ${snapshot.data!.length - 1 - index}",
                                //   billTotal: bill.totalSpent,
                                //   billDate: bill.dateTime.toString(),
                                //   // billDate: bill.dateTime.toString().substring(0, 10),    // substring keeps only the date
                                //   countIteration: index,
                                // );

                                return BillCardsV2(
                                  billName:
                                      "${bill.name} ${snapshot.data!.length - 1 - index}", // Displays in Reverse Order
                                  billTotal: bill.totalSpent,
                                  billDate: bill.dateTime.toString(),

                                  // billTotal: 250.00,
                                );
                              },
                              separatorBuilder: (BuildContext context,
                                      int index) =>
                                  const Divider() // Separator Elements between each of the items
                              ),
                        )
                      : const SizedBox.shrink();
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
        //onPressed: _incrementCounter,
        onPressed: testDatabase.uploadBill,
        tooltip: 'Increment',
        label: const Text('Actions'),
        icon: const Icon(Symbols.view_cozy),
      ), // This trailing comma makes auto-formatting nicer for build methods.

      bottomNavigationBar: NavigationBar(
        backgroundColor: Theme.of(context)
            .colorScheme
            .surfaceVariant, // Theme of the App (line 32) defines the background color
        indicatorColor: Theme.of(context).colorScheme.secondary,
        labelBehavior: NavigationDestinationLabelBehavior
            .onlyShowSelected, // Only shows the label of the selected icon
        //  animationDuration: const Duration(milliseconds: 1250),
        height: 70.0,

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
            _currentPage = value;
          });
        },
        selectedIndex:
            _currentPage, // Selected Index is updated (Displays the indicator for the selected Icon)
      ),
    );
  }
}
