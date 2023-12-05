import 'dart:math';

import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

import '../../../../runtime_models/bill/i_item_group.dart';
import '../../../../utilities/person_icon.dart';

class ItemGroupCard extends StatelessWidget {
  final IItemGroup itemGroup;
  final bool isEverythingElseItemGroup;
  final void Function()? onTap;

  final int maxPersonIconCount = 9;

  const ItemGroupCard({
    super.key,
    required this.itemGroup,
    this.isEverythingElseItemGroup = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isEverythingElseItemGroup
          ? Theme.of(context).colorScheme.secondaryContainer
          : Theme.of(context).colorScheme.surfaceVariant,
      borderRadius: BorderRadius.circular(12.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12.0),
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      itemGroup.name.isNotEmpty ? itemGroup.name : itemGroup.items[0].name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    itemGroup.splitRule.icon,
                  ],
                ),
                const SizedBox(height: 8),
                Row(children: [
                  RowSuper(
                    innerDistance: -10,
                    children: itemGroup.primarySplits
                        .sublist(0, min(itemGroup.primarySplits.length, maxPersonIconCount))
                        .map((profile) => PersonIcon(profile: profile))
                        .toList(),
                  ),
                  itemGroup.primarySplits.length > maxPersonIconCount
                      ? const Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Icon(Icons.keyboard_control),
                        )
                      : const SizedBox.shrink(),
                ]),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('${itemGroup.items.length} item(s)'),
                    const SizedBox(height: 15.0),
                    Text(
                      '\$ ${itemGroup.value}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
