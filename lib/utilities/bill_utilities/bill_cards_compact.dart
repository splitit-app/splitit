import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../runtime_models/bill/bill_data.dart';
import 'bill_info.dart';

class BillCardsCompact extends StatelessWidget {
  final BillData billData;

  const BillCardsCompact({super.key, required this.billData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BillInfo(billData: billData)),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceVariant,
          borderRadius: BorderRadius.circular(25.0),
        ),
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
                    Text(
                      billData.name,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      DateFormat.yMMMMd().format(billData.dateTime),
                      //billDate.substring(0, 10),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Text(
                  billData.totalSpent.toString(),
                  style: const TextStyle(fontSize: 20.0),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Symbols.more_horiz,
                  size: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
