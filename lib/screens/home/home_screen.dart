import 'package:flutter/material.dart';
import 'dart:math';

import 'package:material_symbols_icons/symbols.dart';
import 'package:project_bs/runtime_models/bill/bill_data.dart';
import 'package:project_bs/runtime_models/user/user_data.dart';
import 'package:project_bs/screens/bill/view_bills.dart';
import 'package:project_bs/services/bill_data_repository.dart';
import 'package:project_bs/utilities/bill%20utilities/bill_cards_compact.dart';
import 'package:provider/provider.dart';
import 'package:project_bs/services/authentication_service.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import '../bill/quick_split_dialog.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UserData? userData = context.watch<UserData?>();
    final expandableFabStateKey = GlobalKey<ExpandableFabState>();

    return Scaffold(
      appBar: AppBar(
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.vertical(
        //     bottom: Radius.circular(18),
        //   ),
        // ),
        backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
        title: const Text("Home"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Symbols.menu),
          padding: const EdgeInsets.only(left:16, right:24),
          iconSize: 24,
        ),
        actions: [
          ElevatedButton(
            onPressed: AuthenticationService().signOut,
            child: const Text('Log out'),
          )
        ],
      ),
      body: userData == null
          ? const Center(child: Text("No User Error"))
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 10.0),
                child: Column(
                  children: [
                    // Profile Icon and Welcoming Text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Welcome Back, ',
                                style: TextStyle(fontSize: 25.0)),
                            Text('${userData.publicProfile.name}!',
                                style: const TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                        // ? Make Profile Icon clickable to direct to Profile Page (Notes for Myself)
                        GestureDetector(
                          onTap: () {},
                          child: const CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                "https://d1.awsstatic.com/MaxTsai.c5d516fa5ed7f7171553e9e2df1585e77ab88f87.png"),
                          ),
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
                            color:
                                Theme.of(context).colorScheme.surfaceVariant),
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
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Add Friend Home Button:
                        Column(
                          children: [
                            Material(
                                child: Ink(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer,
                                  borderRadius: BorderRadius.circular(25.0)),
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(25.0),
                                child:
                                    const Icon(Symbols.person_add, size: 45.0),
                              ),
                            )),
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

                        // Group Add Home Button:
                        Column(
                          children: [
                            Material(
                                child: Ink(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  borderRadius: BorderRadius.circular(25.0)),
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(25.0),
                                child: const Icon(Symbols.money, size: 45.0),
                              ),
                            )),
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

                        // Bill Split Home Button:
                        Column(
                          children: [
                            Material(
                                child: Ink(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .tertiaryContainer,
                                  borderRadius: BorderRadius.circular(25.0)),
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(25.0),
                                child:
                                    const Icon(Symbols.group_add, size: 45.0),
                              ),
                            )),
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
                        const Text("Recent Transactions",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold)),
                        TextButton(
                            onPressed: () {
                              //! Bill Data not being displayed when navigating to New Page
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ViewBillHistory()),
                              );
                            },
                            child: const Text("See All",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700))),
                      ],
                    ),

                    // Data from Database:
                    StreamBuilder<List<BillData>?>(
                        stream:
                            context.read<BillDataRepository>().billDataStream,
                        builder: (context, snapshot) {
                          return snapshot.hasData
                              ? ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  // itemCount: snapshot.data!.length,
                                  itemCount: min(snapshot.data!.length, 5),
                                  itemBuilder: (context, index) {
                                    BillData bill = snapshot.data![index];
                                    return BillCardsCompact(
                                      billName:
                                          "${bill.name}", // Displays in Reverse Order
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

      // FAB:
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: userData == null
          ? const SizedBox.shrink()
          : true
              ? ExpandableFab(
                  key: expandableFabStateKey,
                  distance: 80,
                  overlayStyle:
                      ExpandableFabOverlayStyle(color: const Color(0xBB000000)),
                  type: ExpandableFabType.up,
                  children: [
                    FloatingActionButton.extended(
                      heroTag:
                          "fab", // Prevents multiple heroes error for Page Routing
                      onPressed: () {
                        // context.read<BillDataRepository>().pushBillData(BillData(
                        //       dateTime: DateTime.now(),
                        //       itemGroups: List.empty(),
                        //       taxModule: BillModule_Tax(),
                        //       tipModule: BillModule_Tip(),
                        //       payer: userData.publicProfile,
                        //       lastUpdatedSession: DateTime.now(),
                        //     ));
                        context.read<BillDataRepository>().createBill(
                              dateTime: DateTime.now(),
                              name: "New Bill",
                              totalSpent: 0,
                              payer: userData.publicProfile,
                            );

                        final state = expandableFabStateKey.currentState;
                        if (state != null && state.isOpen) state.toggle();
                      },
                      label: const Text('Create Bill'),
                      icon: const Icon(Symbols.file_copy),
                    ),
                    FloatingActionButton.extended(
                      onPressed: () {
                        quickSplitDialog(context);
                        final state = expandableFabStateKey.currentState;
                        if (state != null && state.isOpen) state.toggle();
                      },
                      label: const Text('Quick Split'),
                      icon: const Icon(Symbols.bolt),
                    ),
                  ],
                )
              // ignore: dead_code
              : FloatingActionButton.extended(
                  backgroundColor:
                      Theme.of(context).colorScheme.tertiaryContainer,
                  onPressed: () {},
                  label: const Text('Actions'),
                  icon: const Icon(Symbols.view_cozy),
                ),
    );
  }
}
