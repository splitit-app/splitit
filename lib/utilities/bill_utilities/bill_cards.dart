import 'dart:math';

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
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
              child: Container(
                height: 350,
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
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    // Top Row: (Basic information, Bill Name + Bill Date)
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment
                            .spaceBetween, // Spaces each of the Components in the First Row
                        children: [
                          Row(
                            // Grouping (Wrapping) the Container and Column in a row to better separate between the arrow icon
                            children: [
                              Container(
                                width: 50,
                                height: 50,
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
                              const SizedBox(width: 15.0),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    billData.name,
                                    style: TextStyle(
                                      // color: textColors,
                                      color: Theme.of(context).colorScheme.onPrimaryContainer,

                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    DateFormat.yMMMMd().format(billData.dateTime),
                                    style: TextStyle(
                                      // color: textColors,
                                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // Arrow Icon
                          const Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),

                    // Second Row (People Row)
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            // Text Row for "People"
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5.0),
                              child: Row(
                                children: [
                                  Text(
                                    "People",
                                    style: TextStyle(
                                      // color: textColors,
                                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: CustomScrollView(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    physics: const NeverScrollableScrollPhysics(),
                                    slivers: [
                                      // Payer
                                      SliverToBoxAdapter(
                                          child: PersonIcon(profile: billData.payer!)),
                                      SliverToBoxAdapter(
                                        child: VerticalDivider(
                                          thickness: 2.0,
                                          color: Theme.of(context).dividerColor,
                                        ),
                                      ),

                                      // Primary Splits
                                      SliverList.builder(
                                        itemCount: min(billData.primarySplits.length, 3),
                                        itemBuilder: (context, index) =>
                                            PersonIcon(profile: billData.primarySplits[index]),
                                      ),
                                      SliverToBoxAdapter(
                                        child: billData.primarySplits.length > 3
                                            ? const Padding(
                                                padding: EdgeInsets.only(left: 5),
                                                child: Icon(Icons.keyboard_control),
                                              )
                                            : const SizedBox.shrink(),
                                      ),
                                    ]),
                              ),
                            ),

                            //     // The Rest of the Person(s) Icons/Containers
                            //     Row(
                            //       mainAxisSize: MainAxisSize.max,
                            //       mainAxisAlignment: MainAxisAlignment.center,
                            //       children: [
                            //         PersonIcon(profile: billData.payer!),
                            //         PersonIcon(profile: billData.payer!),
                            //         PersonIcon(profile: billData.payer!),
                            //         PersonIcon(profile: billData.payer!),
                            //         IconButton(
                            //           splashColor: const Color(0xFF2C2E30),
                            //           onPressed: () {},
                            //           icon: Icon(
                            //             Icons.keyboard_control,
                            //             size: 20,
                            //             // color: Colors.grey,
                            //             color: Theme.of(context).colorScheme.onSecondaryContainer,
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                    ),

                    // Bill Row (Total, Settled, and Pending Amounts)
                    Row(
                      children: [
                        Flexible(
                          // Removes RenderFlex Overflow Error
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Overview",
                                      style: TextStyle(
                                        // color: textColors,
                                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),

                                // The Container which consists of the Total, Settled, and Pending amounts
                                Container(
                                  width: 350,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    // color: const Color(0xFFCFCFCF),
                                    color: Theme.of(context).colorScheme.onSecondary,
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
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
                                                  color: Color(0xFF3E992A),
                                                  fontWeight: FontWeight.w500),
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
                                              (billData.totalSpent - 5.45).toStringAsFixed(
                                                  2), // Rounding the Number to the tenths
                                              style: const TextStyle(
                                                color: Color(0xFFA11919),
                                                fontSize: 16.0,
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
