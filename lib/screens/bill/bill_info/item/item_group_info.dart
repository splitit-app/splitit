import 'dart:math';

import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:project_bs/screens/bill/bill_info/bill_form.dart';
import 'package:provider/provider.dart';

import '../../../../runtime_models/bill/i_item_group.dart';
import '../../../../runtime_models/bill/item_group.dart';
import '../../../../runtime_models/bill/split_rule.dart';
import '../../../../utilities/decorations.dart';
import '../../../../utilities/person_icon.dart';
import 'edit_friend_split_dialog.dart';

class ItemGroupInfo extends StatefulWidget {
  final IItemGroup itemGroup;
  final bool isEverythingElseItemGroup;
  const ItemGroupInfo({
    super.key,
    required this.itemGroup,
    this.isEverythingElseItemGroup = false,
  });

  @override
  State<ItemGroupInfo> createState() => _ItemGroupInfoState();
}

class _ItemGroupInfoState extends State<ItemGroupInfo> {
  final TextEditingController _itemGroupName = TextEditingController(text: "Item Group 1");
  bool _isTextFormEnabled = false;
  // bool _isDropDownEnabled = false;

  final TextEditingController itemController = TextEditingController();
  bool expandPeople = false;
  final int maxPersonIconCount = 6;

  @override
  Widget build(BuildContext context) {
    _itemGroupName.text = 'Item Group';
    itemController.text = widget.itemGroup.splitRule.label;

    final splitBalances = widget.itemGroup.getSplitBalances;
    //widget.itemGroup.splitExacts.update(widget.itemGroup.primarySplits[0].uid, (value) => 0);
    return Provider.value(
      value: widget.itemGroup,
      child: Scaffold(
        appBar: AppBar(
          shape: appBarShape,
          title: const Text("Item Group"),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
          actions: [
            !widget.isEverythingElseItemGroup
                ? IconButton(
                    onPressed: () async {
                      await context.read<BillForm>().removeItemGroup(widget.itemGroup as ItemGroup);
                      if (mounted) Navigator.of(context).pop();
                    },
                    icon: const Icon(MaterialSymbols.delete),
                  )
                : const SizedBox.shrink()
          ],
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
                    leadingIcon: widget.itemGroup.splitRule.icon,
                    label: const Text('Split Rule'),
                    textStyle: const TextStyle(fontSize: 16),

                    inputDecorationTheme: const InputDecorationTheme(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(8),
                      // border: _isDropDownEnabled ? const OutlineInputBorder() : InputBorder.none,
                    ),
                    menuStyle:
                        const MenuStyle(padding: MaterialStatePropertyAll(EdgeInsets.all(8))),
                    onSelected: (splitRule) {
                      widget.itemGroup.splitRule = splitRule!;
                      setState(() {});
                    },
                    dropdownMenuEntries: SplitRule.values
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
                            onTap: () async {
                              if (widget.itemGroup.splitRule != SplitRule.even) {
                                await showDialog(
                                  context: context,
                                  builder: (context) => EditFriendSplitDialog(
                                      profile: currentProfile, itemGroup: widget.itemGroup),
                                );
                                setState(() {});
                              }
                            },
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
                                const SizedBox(width: 16),
                                SizedBox(
                                    width: 80,
                                    child: Text(
                                      switch (widget.itemGroup.splitRule) {
                                        SplitRule.even => 'Even',
                                        SplitRule.byPercentage =>
                                          '${(widget.itemGroup.splitPercentages[currentProfile.uid]! * 100).toStringAsPrecision(4)}%',
                                        SplitRule.byShares =>
                                          '${widget.itemGroup.splitShares[currentProfile.uid]}x',
                                        _ => '',
                                      },
                                      textAlign: TextAlign.right,
                                    )),
                              ]),
                              //const SizedBox(height: 4),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  '\$${splitBalances[currentProfile.uid]?.toStringAsFixed(2)}',
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

                      return StatefulBuilder(
                        builder: (context, setState) => Slidable(
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
                            title: Row(children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item.name,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      '\$${item.value}',
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  //TODO: save
                                  item.quantity--;
                                  setState(() {});
                                },
                                icon: const Icon(MaterialSymbols.remove),
                              ),
                              Center(child: Text(item.quantity.toString())),
                              IconButton(
                                onPressed: () {
                                  //TODO: save
                                  item.quantity++;
                                  setState(() {});
                                },
                                icon: const Icon(MaterialSymbols.add),
                              ),
                            ]),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const Divider(height: 2, indent: 16, endIndent: 16),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Total",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '\$${widget.itemGroup.value}',
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
