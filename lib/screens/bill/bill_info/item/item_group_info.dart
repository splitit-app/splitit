import 'dart:math';

import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

import '../../../../runtime_models/bill/i_item_group.dart';
import '../../../../utilities/decorations.dart';
import '../../../../utilities/person_icon.dart';

class ItemGroupInfo extends StatefulWidget {
  final IItemGroup itemGroup;
  const ItemGroupInfo({super.key, required this.itemGroup});

  @override
  State<ItemGroupInfo> createState() => _ItemGroupInfoState();
}

enum SplitType {
  even('Even', Icon(MaterialSymbols.balance)),
  byPercentage('By Percentage', Icon(MaterialSymbols.percent)),
  byShares('By Shares', Icon(MaterialSymbols.pie_chart)),
  exact('Exact', Icon(MaterialSymbols.one_two_three_outlined));

  final String label;
  final Icon icon;
  const SplitType(this.label, this.icon);
}

class _ItemGroupInfoState extends State<ItemGroupInfo> {
  final TextEditingController _itemGroupName = TextEditingController(text: "Item Group 1");
  bool _isTextFormEnabled = false;
  // bool _isDropDownEnabled = false;

  SplitType selectedItem = SplitType.even;
  final TextEditingController itemController = TextEditingController();
  bool expandPeople = false;
  final int maxPersonIconCount = 6;

  @override
  Widget build(BuildContext context) {
    _itemGroupName.text = 'Item Group';
    itemController.text = selectedItem.label;

    final splitBalances = widget.itemGroup.getSplitBalances;

    return Provider.value(
      value: widget.itemGroup,
      child: Scaffold(
        appBar: AppBar(
          shape: appBarShape,
          title: const Text("Item Group"),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(children: [
                  // Item Group Name
                  Expanded(
                    flex: 2,
                    child: TextFormField(
                      controller: _itemGroupName,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                      // style: const TextStyle(
                      // fontSize: 24, fontWeight: FontWeight.w500),
                      onTap: () => setState(() {
                        _isTextFormEnabled = true;
                      }),
                      onTapOutside: (event) {
                        _isTextFormEnabled = false;
                        FocusScope.of(context).unfocus();
                      },
                      // onEditingComplete: () {
                      //   _isEnable = false;
                      // },
                      decoration: InputDecoration(
                        labelText: _isTextFormEnabled ? "Item Group Name" : "",
                        //hintText: "Item Group 1",
                        border: _isTextFormEnabled ? const OutlineInputBorder() : InputBorder.none,
                      ),
                    ),
                  ),

                  const SizedBox(width: 16),
                  const Spacer(),

                  // ? https://api.flutter.dev/flutter/material/DropdownMenu-class.html
                  DropdownMenu(
                    width: 160,
                    controller: itemController,
                    //requestFocusOnTap: true,
                    leadingIcon: selectedItem.icon,
                    label: const Text('Split Rule'),
                    textStyle: const TextStyle(fontSize: 16),

                    inputDecorationTheme: const InputDecorationTheme(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(8),
                      // border: _isDropDownEnabled ? const OutlineInputBorder() : InputBorder.none,
                    ),
                    menuStyle:
                        const MenuStyle(padding: MaterialStatePropertyAll(EdgeInsets.all(8))),
                    onSelected: (splitRule) => setState(() => selectedItem = splitRule!),
                    dropdownMenuEntries: SplitType.values
                        .map((splitRule) => DropdownMenuEntry(
                              value: splitRule,
                              label: splitRule.label,
                              leadingIcon: splitRule.icon,
                            ))
                        .toList(),
                  ),
                ]),
                const Divider(height: 16, thickness: 2.0),

                const SizedBox(height: 16),

                // People Container
                const Text("People", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                const SizedBox(height: 8),
                ExpansionTileCard(
                  //TODO: Design advice required here
                  //onExpansionChanged: (isExpanded) => setState(() => expandPeople = isExpanded),
                  borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                  baseColor: Theme.of(context).colorScheme.secondaryContainer,
                  expandedColor: Theme.of(context).colorScheme.surfaceVariant,
                  elevation: 0,
                  title: expandPeople
                      ? const SizedBox.shrink()
                      : Row(children: [
                          RowSuper(
                            innerDistance: -10,
                            children: widget.itemGroup.primarySplits
                                .sublist(0,
                                    min(widget.itemGroup.primarySplits.length, maxPersonIconCount))
                                .map((profile) => PersonIcon(profile: profile))
                                .toList(),
                          ),
                          widget.itemGroup.primarySplits.length > maxPersonIconCount
                              ? const Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Icon(Icons.keyboard_control),
                                )
                              : const SizedBox.shrink(),
                        ]),
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      //padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                      scrollDirection: Axis.vertical,
                      itemCount: widget.itemGroup.primarySplits.length,
                      itemBuilder: (context, index) {
                        final currentProfile = widget.itemGroup.primarySplits[index];

                        // ? Are we making this list slidable? If not, remove.
                        return Slidable(
                          closeOnScroll: false,
                          startActionPane: ActionPane(
                            motion: const BehindMotion(),
                            extentRatio: 0.2,
                            children: [
                              SlidableAction(
                                onPressed: ((context) {}),
                                backgroundColor: Theme.of(context).colorScheme.primary,
                                foregroundColor: Theme.of(context).colorScheme.onPrimary,
                                borderRadius: BorderRadius.only(
                                  //topLeft: Radius.circular(index == 0 ? 25 : 0),
                                  bottomLeft: Radius.circular(
                                      index == widget.itemGroup.primarySplits.length - 1 ? 25 : 0),
                                ),
                                icon: MaterialSymbols.check,
                              ),
                            ],
                          ),
                          child: ListTile(
                            leading: PersonIcon(profile: currentProfile),
                            title: Column(children: [
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                Expanded(
                                    child: Text(
                                  currentProfile.name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                )),
                                //const Spacer(),
                                //TODO: implement split rule detail
                                const SizedBox(width: 16),
                                const SizedBox(
                                    width: 60, child: Text("9/11", textAlign: TextAlign.right)),
                              ]),
                              //const SizedBox(height: 4),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  '\$${splitBalances[currentProfile]?.toStringAsFixed(2)}',
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ]),
                            trailing: const Icon(MaterialSymbols.arrow_right),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(height: 2, indent: 16, endIndent: 16),
                    ),
                  ],
                ),

                // Original container for expansion tile card content
                // Container(
                //   clipBehavior: Clip.hardEdge,
                //   decoration: BoxDecoration(
                //       borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                //       color: Theme.of(context).colorScheme.surfaceVariant),
                // ),

                const SizedBox(height: 24),

                // Item Container
                const Text("Items", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                const SizedBox(height: 8),
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                      color: Theme.of(context).colorScheme.surfaceVariant),
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    //padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    itemCount: widget.itemGroup.items.length,
                    itemBuilder: (context, index) {
                      final item = widget.itemGroup.items[index];

                      return Slidable(
                        closeOnScroll: false,
                        startActionPane: ActionPane(
                          motion: const BehindMotion(),
                          extentRatio: 0.2,
                          children: [
                            SlidableAction(
                              onPressed: ((context) {}),
                              backgroundColor: Theme.of(context).colorScheme.primary,
                              foregroundColor: Theme.of(context).colorScheme.onPrimary,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(index == 0 ? 25 : 0),
                                bottomLeft: Radius.circular(
                                    index == widget.itemGroup.items.length - 1 ? 25 : 0),
                              ),
                              icon: MaterialSymbols.check,
                            ),
                          ],
                        ),
                        // Actual Items
                        child: ListTile(
                          leading: Text('${index + 1}.'),
                          title: Row(
                            children: [
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                    item.name,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  )),
                              Text('\$${item.value}'),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const Divider(height: 2, indent: 16, endIndent: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
