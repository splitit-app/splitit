import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../utilities/group_container.dart';

class GroupPageOverview extends StatelessWidget {
  const GroupPageOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
          title: const Text("Groups"),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(
                  context); // Pops the Route, returns back to the previous page.
            },
            icon: const Icon(Symbols.arrow_back),
            iconSize: 24.0,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
              iconSize: 24.0,
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            // Group Scroll
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                  child: Text(
                    "Most Active Groups",
                    style: TextStyle(fontSize: 22.0),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: SizedBox(
                height: 200.0,
                child: ListView.builder(
                  clipBehavior: Clip.antiAlias,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GroupContainer(),
                            ],
                          ),
                          SizedBox(width: 25.0),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            const Divider(),
            const SizedBox(height: 10.0),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    "Groups",
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.right,
                  ),
                ),
                // // // Displays Friend Total
                Container(
                  width: 24.0,
                  decoration: BoxDecoration(
                    color: Colors.green[800],
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: const Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Centering Text
                    children: [
                      Text(
                        "0",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // GridView.builder(
            //   shrinkWrap: true,
            //   physics: const NeverScrollableScrollPhysics(),
            //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            //   itemCount: 4,
            //   itemBuilder: (context, index) => const Column(
            //     children: [
            //       GroupContainer(),
            //       SizedBox(width: 15.0),
            //     ],
            //   ),
            // ),
            
          ],
        )));
  }
}
