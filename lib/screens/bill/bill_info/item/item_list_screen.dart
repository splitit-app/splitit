import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:project_bs/runtime_models/bill/item.dart';
import 'package:provider/provider.dart';

import '../../../../runtime_models/bill/bill_data.dart';
import '../../../../runtime_models/bill/i_item_group.dart';
import '../../../../runtime_models/bill/item_group.dart';
import 'item_group_card.dart';

class ItemListScreen extends StatefulWidget {
  const ItemListScreen({super.key});

  @override
  State<ItemListScreen> createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {
  @override
  Widget build(BuildContext context) {
    final BillData billData = context.watch();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8).copyWith(bottom: 32),
        child: CustomScrollView(
          slivers: [
            SliverList.separated(
              itemCount: billData.itemGroups.length,
              itemBuilder: (context, index) => ItemGroupCard(
                itemGroup:
                    billData.itemGroups[billData.itemGroups.length - 1 - index] as IItemGroup,
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 16.0),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  billData.itemGroups.isEmpty
                      ? const SizedBox.shrink()
                      : const SizedBox(height: 16),
                  ItemGroupCard(itemGroup: billData.everythingElse as IItemGroup),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          billData.itemGroups.add(ItemGroup(
            name: 'Dummy Item Group',
            primarySplits: [billData.payer!] + billData.primarySplits,
            items: [Item(taxableStatusList: [])],
            splitRules: List.empty(),
            splitBalances: {},
          ));
          setState(() {});
        },
        child: const Icon(MaterialSymbols.add),
      ),
    );
  }
}
