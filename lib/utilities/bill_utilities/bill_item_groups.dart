import 'package:flutter/material.dart';

class BillItemGroup extends StatelessWidget {
  final String groupName;
  final int groupItems;
  final double groupTotal;

  const BillItemGroup(
      {super.key,
      required this.groupName,
      required this.groupItems,
      required this.groupTotal});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceVariant,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Row(children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(groupName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    )),
                const SizedBox(height: 15.0),
                const Row(children: [
                  CircleAvatar(),
                  CircleAvatar(),
                  CircleAvatar(),
                  CircleAvatar(),
                ]),
              ]),
          const Spacer(),
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("$groupItems items"),
                const SizedBox(height: 15.0),
                Text("\$ $groupTotal",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    )),
              ]),
        ]));
  }
}
