import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';
import 'package:splitit/screens/bill/bill_info/tax/tax_info.dart';

import '../../../../runtime_models/bill/tax/tax.dart';
import '../../../../runtime_models/bill/bill_data.dart';
import '../bill_form.dart';
import 'tax_card.dart';

List<Tax> taxes = {
  Tax(name: 'Oxygen Tax', value: 50),
  Tax(name: 'Carbon Emission Fee', value: 100),
  Tax(name: 'Fart Paass', value: 3),
  Tax(name: 'Fart Pass', value: 3),
  Tax(name: 'Fart Pass', value: 3),
  Tax(name: 'Fart Pass', value: 3),
  Tax(name: 'Fart Pass', value: 3),
  Tax(name: 'Fart Pass', value: 3),
  Tax(name: 'Fart Pass', value: 3),
  Tax(name: 'Fart Pass', value: 3),
  Tax(name: 'Fart Pass', value: 3),
  Tax(name: 'Fart Pass', value: 3),
}.toList();

class TaxListScreen extends StatefulWidget {
  const TaxListScreen({super.key});

  @override
  State<TaxListScreen> createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<TaxListScreen> {
  @override
  Widget build(BuildContext context) {
    final BillData billData = context.watch();
    final billForm = BillForm(read: context.read);
    final expandableFabStateKey = GlobalKey<ExpandableFabState>();

    return Provider.value(
      value: billForm,
      builder: (context, child) => Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: taxes.length,
                  itemBuilder: (context, index) {
                    // final currentItemGroup =
                    //     billData.itemGroups[billData.itemGroups.length - 1 - index] as IItemGroup;

                    return TaxCard(
                      tax: taxes[index],
                      onTap: () async {
                        // final BillForm billForm = context.read();

                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MultiProvider(
                              providers: [
                                Provider.value(value: billData),
                                Provider.value(value: billForm),
                              ],
                              builder: (context, child) => TaxInfo(tax: taxes[index]),
                            ),
                          ),
                        );
                        setState(() {});
                      },
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(height: 16.0),
                ),
                const SizedBox(height: 16),

                // Tax Total
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Tax Total: \$ 100.00',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
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
