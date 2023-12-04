import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../../../../runtime_models/bill/bill_data.dart';
import '../../../../runtime_models/bill/i_item_group.dart';
import '../bill_form.dart';
import 'item_group_card.dart';
import 'item_group_info.dart';

import 'item_group_form.dart';

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

    return Provider.value(
      value: billForm,
      builder: (context, child) => Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.all(billData.itemGroups.isEmpty ? 0 : 8),
              sliver: SliverList.separated(
                itemCount: billData.itemGroups.length,
                itemBuilder: (context, index) {
                  final currentItemGroup =
                      billData.itemGroups[billData.itemGroups.length - 1 - index] as IItemGroup;
                  currentItemGroup.name = "New Item";

                  return ItemGroupCard(
                    itemGroup: currentItemGroup,
                    onTap: () async {
                      final BillForm billForm = context.read();

                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Provider.value(
                            value: billForm,
                            builder: (context, child) => ItemGroupInfo(itemGroup: currentItemGroup),
                          ),
                        ),
                      );
                      setState(() {});
                    },
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(height: 16.0),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(8).copyWith(bottom: 80),
              sliver: SliverToBoxAdapter(
                child: ItemGroupCard(
                  itemGroup: billData.everythingElse as IItemGroup,
                  isEverythingElseItemGroup: true,
                  onTap: () {
                    final BillForm billForm = context.read();

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Provider.value(
                          value: billForm,
                          builder: (context, child) => ItemGroupInfo(
                            itemGroup: billData.everythingElse as IItemGroup,
                            isEverythingElseItemGroup: true,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: const Text('Add'),
          icon: const Icon(Symbols.add),
          onPressed: () async {
            await billForm.addItemGroup();

            setState(() {});
            //itemGroupDialog(context);
          },
        ),
      ),
    );
  }
}
