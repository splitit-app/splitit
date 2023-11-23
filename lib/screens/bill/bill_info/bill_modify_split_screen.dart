import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:project_bs/runtime_models/bill/i_item_group.dart';

import '../../../runtime_models/bill/bill_data.dart';
import '../../../utilities/bill_utilities/bill_item_groups.dart';

class ModifySplitScreen extends StatelessWidget {
  final BillData billData;

  const ModifySplitScreen({super.key, required this.billData});

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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  child: CustomScrollView(
                    slivers: [
                      SliverList.separated(
                        itemCount: billData.itemGroups.length,
                        itemBuilder: (context, index) => BillItemGroup(
                          itemGroup: billData.itemGroups[index] as IItemGroup,
                        ),
                        separatorBuilder: (context, index) => const SizedBox(height: 16.0),
                      ),
                      SliverToBoxAdapter(
                        child: Column(
                          children: [
                            billData.itemGroups.isEmpty
                                ? const SizedBox.shrink()
                                : const SizedBox(height: 16),
                            BillItemGroup(itemGroup: billData.everythingElse as IItemGroup),
                          ],
                        ),
                      ),
                    ],
                  ),
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
