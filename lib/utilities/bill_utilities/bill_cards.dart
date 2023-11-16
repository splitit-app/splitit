import 'dart:math';

import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../runtime_models/bill/bill_data.dart';
import '../../runtime_models/user/user_data.dart';
import '../person_icon.dart';
import 'bill_info.dart';

class BillCards extends StatelessWidget {
  final BillData billData;

  // Information Text Color
  final Color textColors = const Color(0xFF0F1013);

  const BillCards({super.key, required this.billData});

  @override
  Widget build(BuildContext context) {
    final UserData? userData = context.watch();

    return userData == null
        ? const Placeholder()
        : GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BillInfo(billData: billData)),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceVariant,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.black45,
                    offset: Offset(0, 2),
                    spreadRadius: 1,
                  ),
                ],
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  //mainAxisSize: MainAxisSize.max,
                  children: [
                    // Top Row: (Basic information, Bill Name + Bill Date)
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // color: Colors.white,
                            color: Theme.of(context).colorScheme.primary,
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                // "https://d1.awsstatic.com/MaxTsai.c5d516fa5ed7f7171553e9e2df1585e77ab88f87.png",
                                "https://i.imgflip.com/7sp8qe.jpg",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  billData.name,
                                  style: TextStyle(
                                    // color: textColors,
                                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  DateFormat.yMMMMd().format(billData.dateTime),
                                  style: TextStyle(
                                    // color: textColors,
                                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Arrow Icon
                        const Icon(Icons.arrow_forward),
                      ],
                    ),
                    const SizedBox(height: 32),
                    // Second Row (People Row)
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "People",
                        style: TextStyle(
                          // color: textColors,
                          color: Theme.of(context).colorScheme.onPrimaryContainer,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),

                    //People
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          PersonIcon(profile: billData.payer!),
                          VerticalDivider(
                            thickness: 2.0,
                            color: Theme.of(context).dividerColor,
                          ),
                          RowSuper(
                            innerDistance: -10.0,
                            children: billData.primarySplits
                                .sublist(0, min(billData.primarySplits.length, 4))
                                .map((profile) => PersonIcon(profile: profile))
                                .toList(),
                          ),
                          billData.primarySplits.length > 4
                              ? const Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Icon(Icons.keyboard_control),
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                    ),
                    const SizedBox(height: 6),

                    // Bill Row (Total, Settled, and Pending Amounts)
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Overview",
                        style: TextStyle(
                          // color: textColors,
                          color: Theme.of(context).colorScheme.onPrimaryContainer,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),

                    Container(
                      decoration: BoxDecoration(
                        // color: const Color(0xFFCFCFCF),
                        color: Theme.of(context).colorScheme.onSecondary,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        child: Column(
                          //mainAxisSize: MainAxisSize.max,
                          children: [
                            // Bill Total Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Total",
                                  style: TextStyle(color: Color(0xFF56585A)),
                                ),
                                Text(
                                  // "\$125.45",
                                  //TODO: currency
                                  billData.totalSpent.toString(),
                                  style: TextStyle(
                                      // color: Color(0xFF101217)),
                                      // color: textColors),
                                      color: Theme.of(context).colorScheme.primary),
                                ),
                              ],
                            ),

                            // Settled Amount Row
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Settled",
                                  style: TextStyle(color: Color(0xFF56585A)),
                                ),
                                Text(
                                  //TODO: currency
                                  "\$5.45", // Amount Settled (Resolved)
                                  style: TextStyle(
                                      color: Color(0xFF3E992A), fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),

                            // Divider
                            Divider(
                              thickness: 1,
                              color: Theme.of(context).colorScheme.secondary,
                            ),

                            // Pending Amount Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Pending",
                                  style: TextStyle(color: Color(0xFF56585A)),
                                ),
                                Text(
                                  // "\$100.00",

                                  // The bill total subtracted by the amount resolved. Currently the settled amount is hardcoded.
                                  //TODO: currency
                                  (billData.totalSpent - 5.45)
                                      .toStringAsFixed(2), // Rounding the Number to the tenths
                                  style: const TextStyle(
                                    color: Color(0xFFA11919),
                                    //fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
