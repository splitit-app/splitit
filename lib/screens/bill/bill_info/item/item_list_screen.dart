import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../../../../runtime_models/bill/bill_data.dart';
import '../../../../runtime_models/bill/item/i_item_group.dart';
import '../bill_form.dart';
import 'item_group_card.dart';
import 'item_group_info.dart';

// import 'create_item_group_dialog.dart';

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
    final expandableFabStateKey = GlobalKey<ExpandableFabState>();

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

                  return ItemGroupCard(
                    itemGroup: currentItemGroup,
                    onTap: () async {
                      final BillForm billForm = context.read();

                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MultiProvider(
                            providers: [
                              Provider.value(value: billData),
                              Provider.value(value: billForm),
                            ],
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
                child: Column(
                  children: [
                    ItemGroupCard(
                      itemGroup: billData.everythingElse as IItemGroup,
                      isEverythingElseItemGroup: true,
                      onTap: () {
                        final BillForm billForm = context.read();

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MultiProvider(
                              providers: [
                                Provider.value(value: billData),
                                Provider.value(value: billForm),
                              ],
                              builder: (context, child) => ItemGroupInfo(
                                itemGroup: billData.everythingElse as IItemGroup,
                                isEverythingElseItemGroup: true,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 16),

                    // Subtotal
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Subtotal: \$ ${billData.totalSpent.toStringAsFixed(2)}',
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        // FAB
        floatingActionButtonLocation: ExpandableFab.location,
        floatingActionButton: ExpandableFab(
          key: expandableFabStateKey,
          distance: 56,
          overlayStyle: ExpandableFabOverlayStyle(color: const Color(0xBB000000)),
          type: ExpandableFabType.up,
          children: [
            ElevatedButton.icon(
              onPressed: () async {
                await billForm.addItemGroup();
                setState(() {});

                final state = expandableFabStateKey.currentState;
                if (state != null && state.isOpen) state.toggle();
              },
              label: const Text('Add Item Group'),
              icon: const Icon(Symbols.shapes),
            ),
            ElevatedButton.icon(
              onPressed: () {
                final state = expandableFabStateKey.currentState;
                if (state != null && state.isOpen) state.toggle();
              },
              label: const Text('Add Item'),
              icon: const Icon(Symbols.shapes),
            ),
          ],
        ),
      ),
    );
  }
}
