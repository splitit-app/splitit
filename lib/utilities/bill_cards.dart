import 'package:flutter/material.dart';

import '../utilities/person_icon.dart';

class BillCards extends StatelessWidget {
  // Parameters:
  final String billName;
  final double billTotal;
  final String billDate;

  // Information Text Color
  final Color textColors = const Color(0xFF0F1013);

  const BillCards({
    super.key,
    required this.billName,
    required this.billTotal,
    required this.billDate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Spaces each of the Components in the First Row
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
                            // "Groceries",
                            billName,
                            style: TextStyle(
                              // color: textColors,
                              color: Theme.of(context).colorScheme.onPrimaryContainer,
                              
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            // "June 9th, 2023",
                            // billDate,
                            billDate.substring(0, 10),
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
                  const Icon(
                    Icons.arrow_forward,
                    color: Color(0xFF2B2929),
                    size: 24,
                  ),
                ],
              ),
            ),

            // Second Row (People Row)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
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

                        // Row containing People Containers
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // The First Separate Person Icon
                            const PersonIcon(),

                            // The Rest of the Person(s) Icons/Containers
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const PersonIcon(),
                                const PersonIcon(),
                                const PersonIcon(),
                                const PersonIcon(),
                                IconButton(
                                  splashColor: const Color(0xFF2C2E30),
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.keyboard_control,
                                    size: 20,
                                    // color: Colors.grey,
                                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Total",
                                      style:
                                          TextStyle(color: Color(0xFF56585A)),
                                    ),
                                    Text(
                                      // "\$125.45",
                                      "\$$billTotal",
                                      style: TextStyle(
                                          // color: Color(0xFF101217)),
                                          // color: textColors),
                                          color: Theme.of(context).colorScheme.primary),
                                    ),
                                  ],
                                ),

                                // Settled Amount Row
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Settled",
                                      style:
                                          TextStyle(color: Color(0xFF56585A)),
                                    ),
                                    Text(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Pending",
                                      style:
                                          TextStyle(color: Color(0xFF56585A)),
                                    ),
                                    Text(
                                      // "\$100.00",

                                      // The bill total subtracted by the amount resolved. Currently the settled amount is hardcoded.
                                      (billTotal - 5.45).toStringAsFixed(
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
    );
  }
}
