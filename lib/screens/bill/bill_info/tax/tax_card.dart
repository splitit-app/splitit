import 'package:flutter/material.dart';

import '../../../../runtime_models/bill/tax/tax.dart';

class TaxCard extends StatelessWidget {
  final Tax tax;
  final bool isEverythingElseItemGroup;
  final void Function()? onTap;

  final int maxPersonIconCount = 9;

  const TaxCard({
    super.key,
    required this.tax,
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
                      tax.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    // tax.splitRule.icon,
                  ],
                ),
                const SizedBox(height: 16),

                // Rate & Value
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text('7.795 %'),
                    Text(
                      '\$ ${tax.value.toStringAsFixed(2)}',
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
