import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class BillCardsCompact extends StatelessWidget {
  // Parameters:
  final String billName;
  final double billTotal;
  final String billDate;

  const BillCardsCompact({
    super.key,
    required this.billName,
    required this.billTotal,
    required this.billDate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceVariant,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
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
                              "https://d1.awsstatic.com/MaxTsai.c5d516fa5ed7f7171553e9e2df1585e77ab88f87.png",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            billName,
                            style: TextStyle(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            billDate.substring(0, 10),
                            style: TextStyle(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Text(
                    "\$$billTotal",
                    style: const TextStyle(fontSize: 20.0),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Symbols.more_horiz,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
