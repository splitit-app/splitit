import 'package:flutter/material.dart';
import 'package:project_bs/utilities/bill_utilities/bill_items.dart';

import '../../runtime_models/bill/i_item_group.dart';

class BillItemGroup extends StatelessWidget {
  final IItemGroup itemGroup;

  const BillItemGroup({
    super.key,
    required this.itemGroup,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BillItems(itemGroup: itemGroup)),
      ),
      child: Container(
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
                  Text(itemGroup.name,
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
                  Text('${itemGroup.items.length} items'),
                  const SizedBox(height: 15.0),
                  Text(
                    '\$ ${itemGroup.value}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ]),
          ])),
    );
  }
}
