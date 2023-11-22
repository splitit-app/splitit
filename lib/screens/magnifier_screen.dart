import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:project_bs/utilities/bill_utilities/bill_item_groups.dart';

class MagnifierPage extends StatelessWidget {
  const MagnifierPage({super.key});

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
        body: Column(
          children: [
            const TabBar(
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
                )),
                Tab(
                    child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(MaterialSymbols.percent),
                    SizedBox(width: 5.0),
                    Text("Tax"),
                  ],
                )),
                Tab(
                    child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(MaterialSymbols.room_service),
                    SizedBox(width: 5.0),
                    Text("Tips"),
                  ],
                )),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                ListView.separated(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 26),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) => BillItemGroup(groupName: "Item Group $index", groupItems: 9, groupTotal: 125.0),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 15.0),
                ),
                const Placeholder(),
                const Placeholder(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
