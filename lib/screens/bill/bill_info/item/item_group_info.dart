import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:provider/provider.dart';
import 'package:splitit/screens/bill/bill_info/item/item_group_form.dart';
import 'package:splitit/screens/bill/bill_info/item/item_group_item_subsection.dart';
import 'package:splitit/screens/bill/bill_info/item/item_group_people_subsection.dart';

import '../../../../runtime_models/bill/item/i_item_group.dart';
import '../../../../runtime_models/bill/item/item_group.dart';
import '../../../../runtime_models/bill/split_rule.dart';
import '../../../../utilities/decorations.dart';

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
  final TextEditingController _itemGroupName = TextEditingController();
  bool _isTextFormEnabled = false;
  // bool _isDropDownEnabled = false;

  final TextEditingController itemController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final itemGroupForm = ItemGroupForm(read: context.read);

    // _itemGroupName.text = 'Item Group';
    _itemGroupName.text =
        widget.itemGroup.name.isNotEmpty ? widget.itemGroup.name : widget.itemGroup.items[0].name;

    itemController.text = widget.itemGroup.splitRule.label;

    return Provider.value(
      value: widget.itemGroup,
      child: Scaffold(
        appBar: AppBar(
          shape: appBarShape,
          title: Text(
            widget.itemGroup.name.isNotEmpty
                ? widget.itemGroup.name
                : widget.itemGroup.items[0].name,
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
          actions: [
            !widget.isEverythingElseItemGroup
                ? IconButton(
                    onPressed: () async {
                      await itemGroupForm.removeItemGroup(widget.itemGroup as ItemGroup);
                      if (mounted) {
                        Navigator.of(context).pop();
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            behavior: SnackBarBehavior.floating,
                            content: Text("Item Group Deleted")));
                      }
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
                      enabled: !widget.isEverythingElseItemGroup,
                      controller: _itemGroupName,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                      // style: const TextStyle(
                      // fontSize: 24, fontWeight: FontWeight.w500),
                      onTap: () => setState(() {
                        _isTextFormEnabled = true;
                      }),
                      onTapOutside: (event) {
                        if (!_isTextFormEnabled) return;

                        _isTextFormEnabled = false;
                        widget.itemGroup.name = _itemGroupName.text;
                        FocusScope.of(context).unfocus();
                      },
                      onFieldSubmitted: (value) {
                        if (!_isTextFormEnabled) return;

                        _isTextFormEnabled = false;
                        widget.itemGroup.name = _itemGroupName.text;
                      },
                      decoration: InputDecoration(
                        labelText: _isTextFormEnabled ? "Name" : "",
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
                    leadingIcon: widget.itemGroup.splitRule.icon,
                    label: const Text('Split Rule'),
                    textStyle: const TextStyle(fontSize: 16),
                    inputDecorationTheme: const InputDecorationTheme(
                      border: OutlineInputBorder(),
                      // contentPadding: EdgeInsets.all(8),
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

                //People
                PeopleSubsection(itemGroup: widget.itemGroup),
                const SizedBox(height: 24),

                // Item
                ItemSubsection(
                  itemGroup: widget.itemGroup,
                  isEverythingElseItemGroup: widget.isEverythingElseItemGroup,
                ),
                const SizedBox(height: 24),

                // Total
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Total",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '\$ ${widget.itemGroup.value.toStringAsFixed(2)}',
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
        ),
        // floatingActionButton: FloatingActionButton.extended(
        //   label: const Text('Save'),
        //   icon: const Icon(Symbols.save),
        //   onPressed: () async {
        //     //update itemgroup form
        //     setState(() {});
        //   },
        // ),
      ),
    );
  }
}
