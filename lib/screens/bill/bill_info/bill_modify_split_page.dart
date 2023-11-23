import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';

import 'item/item_list_screen.dart';

class ModifySplitPage extends StatelessWidget {
  const ModifySplitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Magnifier"),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
        ),
        body: const Column(
          children: [
            TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(MaterialSymbols.list),
                      SizedBox(width: 5.0),
                      Text("Item"),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(MaterialSymbols.percent),
                      SizedBox(width: 5.0),
                      Text("Tax"),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(MaterialSymbols.room_service),
                      SizedBox(width: 5.0),
                      Text("Tips"),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                ItemListScreen(),
                Placeholder(),
                Placeholder(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
