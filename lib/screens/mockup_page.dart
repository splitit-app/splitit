import 'package:flutter/material.dart';
import 'package:project_bs/screens/friends_screen/friends_page.dart';

import '../utilities/bill_cards_v2.dart';

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
      // home: const SlideAbleTest(),
      home: PageTest(),
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
        title: Text("Frontend Tester Page",
            style: TextStyle(
              color: themeColor.surface,
            )),
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

                  return BillCardsV2(
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
