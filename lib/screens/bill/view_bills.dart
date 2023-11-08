import 'package:flutter/material.dart';
import 'package:project_bs/runtime_models/bill/bill_data.dart';
import 'package:project_bs/runtime_models/user/user_data.dart';
import 'package:project_bs/services/bill_data_repository.dart';
import 'package:project_bs/utilities/bill%20utilities/bill_cards.dart';
import 'package:provider/provider.dart';

import '../../utilities/bill utilities/bill_info.dart';

class ViewBillHistory extends StatefulWidget {
  const ViewBillHistory({super.key});

  @override
  State<ViewBillHistory> createState() => _ViewBillHistoryState();
}

class _ViewBillHistoryState extends State<ViewBillHistory> {
  @override
  Widget build(BuildContext context) {
    UserData? userData = context.watch<UserData?>();

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
              Text("Transaction History",
                  style: Theme.of(context).textTheme.headlineMedium),
              const Text("Displaying Most Recent",
                  style: TextStyle(fontSize: 20)),
              userData == null
                  ? const SizedBox.shrink()
                  :
                  // Data from Database:
                  StreamBuilder<List<BillData>?>(
                      stream: context.read<BillDataRepository>().billDataStream,
                      builder: (context, snapshot) {
                        return snapshot.hasData
                            ? Expanded(
                                // Makes the ListView scrollable.
                                child: ListView.separated(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    shrinkWrap: true,
                                    itemCount: snapshot.data!.length,
                                    itemBuilder: (context, index) {
                                      BillData bill = snapshot.data![index];
                                      return GestureDetector(
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context){
                                            return BillInfo(billName: "${bill.name} ${snapshot.data!.length - 1 - index}", billDate: bill.dateTime.toString().substring(0, 10), billTotal: bill.totalSpent);
                                          }));
                                        },
                                        child: BillCards(
                                          uid: bill.uid,
                                          billName:
                                              "${bill.name} ${snapshot.data!.length - 1 - index}", // Displays in Reverse Order
                                          billTotal: bill.totalSpent,
                                          billDate: bill.dateTime.toString(),
                                        ),
                                      );
                                    },
                                    separatorBuilder: (BuildContext context,
                                            int index) =>
                                        const Divider() // Separator Elements between each of the items
                                    ),
                              )
                            : const SizedBox.shrink();
                      },
                    ),
            ],
          ),
        ),
      );
  }
}
