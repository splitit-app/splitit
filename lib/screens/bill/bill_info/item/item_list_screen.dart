import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:provider/provider.dart';

import '../../../../runtime_models/bill/bill_data.dart';
import '../../../../runtime_models/bill/i_item_group.dart';
import '../bill_form.dart';
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
    final billForm = BillForm(read: context.read);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.all(billData.itemGroups.isEmpty ? 0 : 8),
            sliver: SliverList.separated(
              itemCount: billData.itemGroups.length,
              itemBuilder: (context, index) => ItemGroupCard(
                itemGroup:
                    billData.itemGroups[billData.itemGroups.length - 1 - index] as IItemGroup,
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 16.0),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(8).copyWith(bottom: 80),
            sliver: SliverToBoxAdapter(
              child: ItemGroupCard(itemGroup: billData.everythingElse as IItemGroup),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await billForm.addItemGroup();
          setState(() {});
        },
        child: const Icon(MaterialSymbols.add),
      ),
    );
  }
}
