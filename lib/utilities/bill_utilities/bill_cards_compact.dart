import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../runtime_models/bill/bill_data.dart';

class BillCardsCompact extends StatelessWidget {
  final BillData billData;
  final void Function()? onTap;

  const BillCardsCompact({super.key, required this.billData, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.surfaceVariant,
      borderRadius: BorderRadius.circular(25.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(25.0),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
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
                      "https://d1.awsstatic.com/MaxTsai.c5d516fa5ed7f7171553e9e2df1585e77ab88f87.png",
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20.0),
              Expanded(
                flex: 3,
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        billData.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimaryContainer,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        DateFormat.yMMMMd().format(billData.dateTime),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimaryContainer,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    NumberFormat.currency(
                      symbol: '\$',
                      decimalDigits: 2,
                    ).format(billData.totalSpent),
                    // style: const TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              // IconButton(
              //   onPressed: () {},
              //   icon: const Icon(
              //     Symbols.more_horiz,
              //     size: 24,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
