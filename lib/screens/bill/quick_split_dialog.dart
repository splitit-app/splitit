import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../../runtime_models/user/public_profile.dart';
import '../../runtime_models/user/user_data.dart';
import '../../utilities/fields.dart';
import '../../utilities/person_icon.dart';
import '../../utilities/scroll_animations.dart';
import 'quick_split_form.dart';

void quickSplitDialog(BuildContext context) => showDialog(
      context: context,
      builder: (context) {
        final quickSplitForm = QuickSplitForm(read: context.read);

        final UserData? userData = context.watch();

        return userData == null
            ? const Placeholder()
            : PageView(
                controller: quickSplitForm.pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  AlertDialog(
                    icon: const Icon(MaterialSymbols.bolt_filled),
                    title: const Text("Quick Split"),
                    titlePadding: const EdgeInsets.all(1),
                    scrollable: true,
                    content: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Text("provide split information"),
                          const SizedBox(height: 20),
                          TextFormField(
                            autofocus: true,
                            controller: quickSplitForm.nameFieldController,
                            decoration: textFieldDecoration_border.copyWith(
                              labelText: "Name",
                              suffixIcon: IconButton(
                                onPressed: quickSplitForm.nameFieldController.clear,
                                icon: const Icon(Symbols.close),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          DateFormField(
                            controller: quickSplitForm.dateFieldController,
                            decoration: dateFieldDecoration_border.copyWith(labelText: "Date"),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            controller: quickSplitForm.totalSpentFieldController,
                            keyboardType: TextInputType.number,
                            decoration: textFieldDecoration_border.copyWith(
                              labelText: "Total Spent",
                              suffixIcon: IconButton(
                                onPressed: quickSplitForm.totalSpentFieldController.clear,
                                icon: const Icon(Symbols.close),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                    //actionsAlignment: MainAxisAlignment.spaceBetween,
                    actions: [
                      //Cancel Button
                      TextButton(
                        onPressed: () {
                          if (context.mounted) Navigator.of(context).pop();
                        },
                        child: const Text("Cancel"),
                      ),
                      //Next Button
                      OutlinedButton(
                        onPressed: () async => await quickSplitForm.submitBillInfo(),
                        //Navigator.push(context,),
                        child: const Text("Next"),
                      ),
                    ],
                  ),
                  AlertDialog(
                      icon: const Icon(MaterialSymbols.bolt_filled),
                      title: const Text("Quick Split"),
                      titlePadding: const EdgeInsets.all(1),
                      content: SingleChildScrollView(
                        child: Column(
                          children: [
                            const Text("select people to split equally"),
                            const SizedBox(height: 20),
                            SizedBox(
                              height: 300,
                              child: StatefulBuilder(
                                builder: (context, setState) => ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: userData.nonRegisteredFriends.length,
                                    itemBuilder: (context, index) {
                                      PublicProfile profile =
                                          userData.nonRegisteredFriends.values.elementAt(index);

                                      return CheckboxListTile(
                                        secondary: PersonIcon(profile: profile),
                                        title: Text(profile.name),
                                        value: quickSplitForm.friendInvolvements[profile],
                                        onChanged: (value) => setState(() =>
                                            quickSplitForm.friendInvolvements[profile] = value!),
                                      );
                                    }),
                              ),
                            ),
                          ],
                        ),
                      ),
                      actionsAlignment: MainAxisAlignment.spaceBetween,
                      actions: [
                        OutlinedButton(
                          onPressed: () =>
                              quickSplitForm.pageController.animateToPageWithDefaults(0),
                          child: const Text("Back"),
                        ),
                        OutlinedButton(
                          onPressed: () async {
                            await quickSplitForm.createBill();
                            if (context.mounted) Navigator.of(context).pop();
                          },
                          child: const Text("Split It"),
                        ),
                      ]),
                ],
              );
        // });
      },
    );
