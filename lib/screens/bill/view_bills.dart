import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../../runtime_models/bill/bill_data.dart';
import '../../runtime_models/user/user_data.dart';
import '../../services/bill_data_repository.dart';
import '../../utilities/bill_utilities/bill_cards.dart';
import 'quick_split_dialog.dart';

class ViewBillHistory extends StatefulWidget {
  const ViewBillHistory({super.key});

  @override
  State<ViewBillHistory> createState() => _ViewBillHistoryState();
}

class _ViewBillHistoryState extends State<ViewBillHistory> {
  @override
  Widget build(BuildContext context) {
    final UserData? userData = context.watch();
    final List<BillData>? bills = context.watch();
    final expandableFabStateKey = GlobalKey<ExpandableFabState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Bills History"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Transaction History", style: Theme.of(context).textTheme.headlineMedium),
            const Text("Displaying Most Recent", style: TextStyle(fontSize: 20)),
            bills == null
                ? const Placeholder()
                : Expanded(
                    // Makes the ListView scrollable.
                    child: ListView.separated(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      shrinkWrap: true,
                      itemCount: bills.length,
                      itemBuilder: (context, index) => BillCards(billData: bills[index]),
                      separatorBuilder: (BuildContext context, int index) => const Divider(),
                    ),
                  )
          ],
        ),
      ),
      // FAB:
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: userData == null
          ? const SizedBox.shrink()
          : true
              ? ExpandableFab(
                  key: expandableFabStateKey,
                  distance: 80,
                  overlayStyle: ExpandableFabOverlayStyle(color: const Color(0xBB000000)),
                  type: ExpandableFabType.up,
                  children: [
                    FloatingActionButton.extended(
                      heroTag: "fab", // Prevents multiple heroes error for Page Routing
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
                    FloatingActionButton.extended(
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
    );
  }
}
