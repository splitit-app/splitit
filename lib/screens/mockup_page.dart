import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_bs/runtime_models/user/user_data.dart';
import 'package:project_bs/screens/friends_screen/friends_page.dart';
import 'package:project_bs/screens/test_experiment_screen.dart';
import 'package:project_bs/services/bill_data_repository.dart';
import 'package:project_bs/utilities/bill_cards_compact.dart';
import 'package:provider/provider.dart';

import '../runtime_models/bill/bill_data.dart';
import '../utilities/bill_cards.dart';

import 'package:material_symbols_icons/symbols.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MockUpPage extends StatelessWidget {
  const MockUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hides the Debug banner
      title: 'Mock Up',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePageV2(),
      // home: const SlideAbleTest(),
      // home: PageTest(),
      // home: const FriendsPage(),
    );
  }
}

class PageTest extends StatelessWidget {
  final List _billName = [
    "McRonalds",
    "Barbie Movie",
    "Brandon's Funeral",
    "Fortnite Battlepass",
    "Nose Hair Museum",
    "My Little Pony Convention",
  ];

  final List _billDate = [
    "September 1st, 2023",
    "September 25th, 2023",
    "October 2nd, 2023",
    "October 6th, 2023",
    "October 9th, 2023",
    "October 10th, 2023",
  ];
  final List _billTotal = [152.32, 175.23, 14.21, 15.61, 25.61, 58.61];
  PageTest({super.key});

  @override
  Widget build(BuildContext context) {
    var themeColor = Theme.of(context).colorScheme; // Theme Color Variable

    return Scaffold(
      appBar: AppBar(
        title: const Text("Bill View Page Test"),
        centerTitle: true,
        backgroundColor: themeColor.surfaceVariant,
      ),
      body: SafeArea(
        child: Column(
          children: [
            // SizedBox(
            //   height: 150,
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: _billDate.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       return Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Container(
            //           height: 100,
            //           width: 100,
            //           decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.pink[200]),
            //           child: Center(child: Text(_billDate[index])),
            //         ),
            //       );
            //     },
            //   ),
            // ),

            Expanded(
              // flex: 4,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _billName.length,
                // itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  // return const Placeholder();
                  // return BillCards(countIteration: index ,billName: "Mickie Dees Nuts", billTotal: 5.45, billDate: "yursday",);
                  // return BillCards(countIteration: index ,billName: _billName[index], billTotal: _billTotal[index], billDate: _billDate[index],);

                  return BillCards(
                    billName: _billName[index],
                    billTotal: _billTotal[index],
                    billDate: _billDate[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SlideAbleTest extends StatelessWidget {
  const SlideAbleTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Slidable(
            // Slide from the Left (or Top)
            startActionPane: ActionPane(
              // Controls how the Pane animates
              // motion: const ScrollMotion(),
              motion: const StretchMotion(),

              dismissible: DismissiblePane(onDismissed: () {}),

              // All Actions:
              children: [
                SlidableAction(
                  // flex: 2,
                  onPressed: ((context) {
                    // action
                  }),
                  backgroundColor: const Color(0xFF31D42B),
                  foregroundColor: Colors.white,
                  icon: Symbols.phone,
                  label: "Call'em up",
                ),
                SlidableAction(
                  onPressed: ((context) {
                    // action
                  }),
                  backgroundColor: const Color(0xFFD42B2B),
                  foregroundColor: Colors.white,
                  icon: Symbols.delete,
                  label: "Delete",
                ),
              ],
            ),

            // Slide from the Right (or Bottom)
            endActionPane: ActionPane(
              motion: const StretchMotion(),

              // All Actions:
              children: [
                SlidableAction(
                  // flex: 2,
                  onPressed: ((context) {
                    // action
                  }),
                  backgroundColor: const Color(0xFF2B82D4),
                  foregroundColor: Colors.white,
                  icon: Symbols.chat,
                  label: "Chat'em up",
                ),
              ],
            ),
            child: builtUserListTile(),
          );
        },
      ),
    );
  }

  Container builtUserListTile() {
    return Container(
      color: Colors.grey[300],
      child: const ListTile(
        title: Text("Sid"),
        subtitle: Text("Bobba"),
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
              "https://i.pinimg.com/originals/14/2f/a7/142fa7f209297073e4648f11ed842a6a.jpg"),
        ),
      ),
    );
  }
}

class MyHomePageV2 extends StatelessWidget {
  const MyHomePageV2({super.key});

  @override
  Widget build(BuildContext context) {
    UserData? userData = context.watch<UserData?>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
        title: const Text("Home"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Symbols.account_circle),
          iconSize: 30.0,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Symbols.color_lens),
            iconSize: 30.0,
          ),
        ],
      ),
      body: userData == null
          ? const Center(child: Text("No User Error"))
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                child: Column(
                  children: [
                    // Profile Icon and Welcoming Text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Welcome Back, ', style: TextStyle(fontSize: 25.0)),
                            Text('${userData.publicProfile.name}!',
                                style:
                                    const TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500)),
                          ],
                        ),
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              "https://d1.awsstatic.com/MaxTsai.c5d516fa5ed7f7171553e9e2df1585e77ab88f87.png"),
                        ),
                      ],
                    ),
                    // Container Box for Something
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Container(
                        height: 100,
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Theme.of(context).colorScheme.surfaceVariant),
                        child: const Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Something"),
                                Text("Yeah"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 15.0),

                    // Quick Start Buttons:
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Quick Start",
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Add Friend Home Button:
                        Column(
                          children: [
                            Container(
                              height: 80,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primaryContainer,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: const Icon(
                                Symbols.person_add,
                                size: 45.0,
                              ),
                            ),
                            const SizedBox(height: 5.0),
                            Text(
                              "Add Friend",
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ],
                        ),

                        // Bill Split Home Button:
                        Column(
                          children: [
                            Container(
                              height: 80,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.tertiaryContainer,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: const Icon(
                                Symbols.money,
                                size: 45.0,
                              ),
                            ),
                            const SizedBox(height: 5.0),
                            Text(
                              "Split Bill",
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ],
                        ),

                        // Group Add Home Button:
                        Column(
                          children: [
                            Container(
                              height: 80,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.secondaryContainer,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: const Icon(
                                Symbols.group_add,
                                size: 45.0,
                              ),
                            ),
                            const SizedBox(height: 5.0),
                            Text(
                              "Add Group",
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ), // End of Home Button Row

                    const SizedBox(height: 20.0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text("Transaction History",style: Theme.of(context).textTheme.bodyLarge),
                        // Text("See All",style: Theme.of(context).textTheme.bodyLarge),
                        const Text("Recent Transactions",
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                        GestureDetector(
                            // Navigates to MyHomePage (Temporary for Bill Viewing) on Gesture Detection fo the text
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PageTest()),
                              );
                            },
                            child: const Text("See All",
                                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700))),
                      ],
                    ),

                    // Data from Database:
                    StreamBuilder<List<BillData>?>(
                        stream: BillDataRepository(uid: userData.uid).billDataStream,
                        builder: (context, snapshot) {
                          return snapshot.hasData
                              ? ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                // itemCount: snapshot.data!.length,
                                itemCount: min(
                                    snapshot.data!.length, 5), // Shows the first 5 or less
                                itemBuilder: (context, index) {
                                  BillData bill = snapshot.data![index];
                                  return BillCardsCompact(
                                    billName:
                                        "${bill.name} ${snapshot.data!.length - 1 - index}", // Displays in Reverse Order
                                    billTotal: bill.totalSpent,
                                    billDate: bill.dateTime.toString(),
                                  );
                                },
                              )
                              : const SizedBox.shrink();
                        }),
                  ],
                ),
              ),
            ),
    );
  }
}
