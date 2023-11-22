import 'package:flutter/material.dart';

import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import '../../runtime_models/bill/bill_data.dart';
import '../person_icon.dart';

class BillItems extends StatefulWidget {
  final BillData billData;
  const BillItems({super.key, required this.billData});

  @override
  State<BillItems> createState() => _BillItemsState();
}

enum SplitType {
  shares("By Shares", Icon(MaterialSymbols.pie_chart_outlined)),
  even("Even", Icon(MaterialSymbols.safety_check)),
  odd("Odd", Icon(MaterialSymbols.breastfeeding)),
  lonely("Lonely", Icon(MaterialSymbols.sentiment_dissatisfied));

  const SplitType(this.label, this.icon);
  final String label;
  final Icon icon;
}

class _BillItemsState extends State<BillItems> {
  final TextEditingController _itemGroupName =
      TextEditingController(text: "Item Group 1");
  bool _isTextFormEnabled = false;
  // bool _isDropDownEnabled = false;

  SplitType? selectedItem;
  final TextEditingController itemController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: widget.billData,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Items"),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: [
                    Row(children: [
                      // Item Group Name
                      Flexible(
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
                            hintText: "Item Group 1",
                            border: _isTextFormEnabled
                                ? const OutlineInputBorder()
                                : InputBorder.none,
                          ),
                        ),
                      ),

                      // const Spacer(flex: 2),
                      // const Icon(MaterialSymbols.pie_chart_outlined),
                      const SizedBox(width: 15.0),
                      // const Text("By Shares", style: TextStyle(fontSize: 18)),

                      // ? https://api.flutter.dev/flutter/material/DropdownMenu-class.html
                      DropdownMenu<SplitType>(
                        width: 175,
                        initialSelection: SplitType.shares,
                        controller: itemController,
                        // requestFocusOnTap: true,
                        // label: const Text('Distribution'),
                        leadingIcon: selectedItem?.icon,
                        inputDecorationTheme: const InputDecorationTheme(
                          border: OutlineInputBorder(),
                          // border: _isDropDownEnabled ? const OutlineInputBorder() : InputBorder.none,
                        ),
                      
                        onSelected: (SplitType? distribution) {
                          setState(() {
                            selectedItem = distribution;
                          });
                        },
                        dropdownMenuEntries: SplitType.values
                            .map<DropdownMenuEntry<SplitType>>(
                                (SplitType distribution) {
                          return DropdownMenuEntry<SplitType>(
                            leadingIcon: distribution.icon,
                            value: distribution,
                            label: distribution.label,
                          );
                        }).toList(),
                      ),
                    ]),
                    const Divider(height: 16, thickness: 2.0),
                  ],
                ),

                const SizedBox(height: 15.0),

                // People Container
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("People",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                    const SizedBox(height: 10.0),
                    Container(
                      height: 175.0,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25.0)),
                          color: Theme.of(context).colorScheme.surfaceVariant),
                      child: ListView.separated(
                        shrinkWrap: true,
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 24),
                        scrollDirection: Axis.vertical,
                        itemCount: widget.billData.primarySplits.length,
                        itemBuilder: (context, index) {
                          final currentProfile =
                              widget.billData.primarySplits[index];

                          // ? Are we making this list slidable? If not, remove.
                          return Slidable(
                            closeOnScroll: false,
                            startActionPane: ActionPane(
                              motion: const BehindMotion(),
                              extentRatio: 0.2,
                              children: [
                                SlidableAction(
                                  onPressed: ((context) {}),
                                  backgroundColor:
                                      Theme.of(context).colorScheme.primary,
                                  foregroundColor:
                                      Theme.of(context).colorScheme.onPrimary,
                                  borderRadius: BorderRadius.only(
                                    topLeft:
                                        Radius.circular(index == 0 ? 25 : 0),
                                    bottomLeft: Radius.circular(index ==
                                            widget.billData.primarySplits
                                                    .length -
                                                1
                                        ? 25
                                        : 0),
                                  ),
                                  icon: MaterialSymbols.check,
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                const SizedBox(width: 15.0),
                                PersonIcon(profile: currentProfile),
                                const SizedBox(width: 15.0),
                                Expanded(
                                    flex: 3,
                                    child: Text(
                                      currentProfile.name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    )),
                                //? what is this for?
                                const Expanded(child: Text("9/11")),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(height: 16, thickness: 2.0),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25.0),

                // Item Container
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Items",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                    const SizedBox(height: 10.0),
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25.0)),
                          color: Theme.of(context).colorScheme.surfaceVariant),
                      child: ListView.separated(
                        shrinkWrap: true,
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 24),
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Slidable(
                            closeOnScroll: false,
                            startActionPane: ActionPane(
                              motion: const BehindMotion(),
                              extentRatio: 0.2,
                              children: [
                                SlidableAction(
                                  onPressed: ((context) {}),
                                  backgroundColor:
                                      Theme.of(context).colorScheme.primary,
                                  foregroundColor:
                                      Theme.of(context).colorScheme.onPrimary,
                                  borderRadius: BorderRadius.only(
                                    topLeft:
                                        Radius.circular(index == 0 ? 25 : 0),
                                    bottomLeft:
                                        Radius.circular(index == 5 ? 25 : 0),
                                  ),
                                  icon: MaterialSymbols.check,
                                ),
                              ],
                            ),
                            // Actual Items
                            child: Row(
                              children: [
                                const SizedBox(width: 15.0, height: 35.0),
                                Expanded(
                                    flex: 3,
                                    child: Text(
                                      "item $index",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    )),
                                const Expanded(child: Text("moners")),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(height: 16, thickness: 2.0),
                      ),
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
