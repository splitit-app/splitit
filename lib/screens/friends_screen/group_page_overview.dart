import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

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
              Navigator.pop(context); // Pops the Route, returns back to the previous page.
            },
            icon: const Icon(Symbols.arrow_back),
            iconSize: 30.0,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Symbols.settings),
              iconSize: 30.0,
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
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
                // Displays Friend Total
                Container(
                  height: 25.0,
                  width: 65.0,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Centering Text
                    children: [
                      Text(
                        "0",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        )));
  }
}
