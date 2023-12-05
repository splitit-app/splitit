import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../../runtime_models/bill/bill_data.dart';
import '../../runtime_models/user/user_data.dart';
import '../../services/bill_data_repository.dart';
import '../../utilities/decorations.dart';
import 'bill_card.dart';
import 'quick_split_dialog.dart';

class BillListScreen extends StatefulWidget {
  const BillListScreen({super.key});

  @override
  State<BillListScreen> createState() => _BillListScreenState();
}

class _BillListScreenState extends State<BillListScreen> {
  @override
  Widget build(BuildContext context) {
    final UserData? userData = context.watch();
    final List<BillData>? bills = context.watch();
    final expandableFabStateKey = GlobalKey<ExpandableFabState>();

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          shape: appBarShape,
          title: const Text("Splits"),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
        ),
        body: Column(
          children: [
            const TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(text: 'All'),
                Tab(text: 'Placeholder'),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                bills == null
                    ? const Placeholder()
                    : ListView.separated(
                        padding: const EdgeInsets.all(16).copyWith(bottom: 80),
                        shrinkWrap: true,
                        itemCount: bills.length,
                        itemBuilder: (context, index) => BillCard(billData: bills[index]),
                        separatorBuilder: (context, index) => const SizedBox(height: 16),
                      ),
                const Placeholder(),
              ]),
            ),
          ],
        ),

        // FAB:
        floatingActionButtonLocation: ExpandableFab.location,
        floatingActionButton: userData == null
            ? const SizedBox.shrink()
            : true
                ? ExpandableFab(
                    key: expandableFabStateKey,
                    distance: 56,
                    overlayStyle: ExpandableFabOverlayStyle(color: const Color(0xBB000000)),
                    type: ExpandableFabType.up,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          context.read<BillDataRepository>().createBill(
                                dateTime: DateTime.now(),
                                name: "New Bill",
                                totalSpent: 0,
                                payer: userData.publicProfile,
                                primarySplits: List.empty(),
                              );

                          final state = expandableFabStateKey.currentState;
                          if (state != null && state.isOpen) state.toggle();
                        },
                        label: const Text('Create Bill'),
                        icon: const Icon(Symbols.file_copy),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          quickSplitDialog(context);
                          final state = expandableFabStateKey.currentState;
                          if (state != null && state.isOpen) state.toggle();
                        },
                        label: const Text('Quick Split'),
                        icon: const Icon(Symbols.bolt),
                      ),
                    ],
                  )
                // ignore: dead_code
                : FloatingActionButton.extended(
                    backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
                    onPressed: () {},
                    label: const Text('Actions'),
                    icon: const Icon(Symbols.view_cozy),
                  ),
      ),
    );
  }
}
