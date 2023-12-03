import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';

import '../../../../runtime_models/bill/i_item_group.dart';
import '../../../../runtime_models/bill/split_rule.dart';
import '../../../../runtime_models/user/public_profile.dart';
import '../../../../utilities/person_icon.dart';

class EditFriendSplitDialog extends StatelessWidget {
  final PublicProfile profile;
  final IItemGroup itemGroup;
  final splitController = TextEditingController();
  final sharesController = TextEditingController();
  final exactController = TextEditingController();

  EditFriendSplitDialog({super.key, required this.profile, required this.itemGroup});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(

        insetPadding: const EdgeInsets.all(8.0),
        icon: PersonIcon(profile: profile),
        title: Text(profile.name, maxLines: 1, overflow: TextOverflow.ellipsis),
        titlePadding: const EdgeInsets.all(1),
        scrollable: true,
        content: switch (itemGroup.splitRule) {
          SplitRule.byPercentage => Column(
              children: [
                const Text('Manage Percentage'),
                StatefulBuilder(
                  builder: (context, setState) => Column(children: [
                    Row(children: [
                      Expanded(
                        child: TextField(
                          controller: splitController
                            ..text = (itemGroup.splitPercentages[profile.uid]! * 100).toString(),
                          onChanged: (value) {
                            if (double.tryParse(value) != null) {
                              final parsedValue = double.parse(value) / 100;
                              if (parsedValue >
                                  itemGroup.primarySplits.fold(
                                      1,
                                      (previousValue, profile) =>
                                          previousValue -
                                          (profile != this.profile
                                              ? itemGroup.splitPercentages[profile.uid]!
                                              : 0))) return;
                              final splitPercentage = Map.of(itemGroup.splitPercentages);
                              splitPercentage[profile.uid] = double.parse(value) / 100;
                              itemGroup.splitPercentages = splitPercentage;
                            }
                          },
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Text('%'),
                    ]),
                    Slider(
                      value: itemGroup.splitPercentages[profile.uid]!,
                      onChanged: (value) {
                        if (value >
                            itemGroup.primarySplits.fold(
                                1,
                                (previousValue, profile) =>
                                    previousValue -
                                    (profile != this.profile
                                        ? itemGroup.splitPercentages[profile.uid]!
                                        : 0))) return;
                        final splitPercentages = Map.of(itemGroup.splitPercentages);
                        splitPercentages[profile.uid] = value;
                        itemGroup.splitPercentages = splitPercentages;
                        setState(() {});
                      },
                      divisions: 20,
                    ),
                  ]),
                )
              ],
            ),
          SplitRule.byShares => Column(
              children: [
                const Text('Manage Shares'),
                StatefulBuilder(builder: (context, setState) {
                  return Row(children: [
                    IconButton(
                        onPressed: () {
                          final splitShares = Map.of(itemGroup.splitShares);
                          splitShares[profile.uid] = splitShares[profile.uid]! - 1;
                          itemGroup.splitShares = splitShares;
                          setState(() {});
                        },
                        icon: const Icon(MaterialSymbols.remove)),
                    Expanded(
                      child: TextField(
                        controller: sharesController
                          ..text = itemGroup.splitShares[profile.uid]!.toString(),
                        onChanged: (value) {
                          if (double.tryParse(value) != null) {
                            final splitShares = Map.of(itemGroup.splitShares);
                            splitShares[profile.uid] = double.parse(value);
                            itemGroup.splitShares = splitShares;
                          }
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          final splitShares = Map.of(itemGroup.splitShares);
                          splitShares[profile.uid] = splitShares[profile.uid]! + 1;
                          itemGroup.splitShares = splitShares;
                          setState(() {});
                        },
                        icon: const Icon(MaterialSymbols.add)),
                  ]);
                })
              ],
            ),
          SplitRule.exact => Column(
              children: [
                const Text('Manage Exact Amount'),
                Expanded(
                  child: TextField(
                    controller: exactController
                      ..text = itemGroup.splitExacts[profile.uid]!.toString(),
                    onChanged: (value) {
                      if (double.tryParse(value) != null) {
                        final splitExact = Map.of(itemGroup.splitExacts);
                        splitExact[profile.uid] = double.parse(value);
                        itemGroup.splitExacts = splitExact;
                      }
                    },
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          _ => const SizedBox.shrink(),
        });
  }
}
