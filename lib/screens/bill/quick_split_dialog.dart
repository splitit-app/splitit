import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:project_bs/runtime_models/user/public_profile.dart';
import 'package:project_bs/utilities/person_icon.dart';
import 'package:provider/provider.dart';

import '../../../utilities/fields.dart';
import '../../runtime_models/user/user_data.dart';
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
                children: [
                  AlertDialog(
                    icon: const Icon(MaterialSymbols.bolt_filled),
                    title: const Text("Quick Split"),
                    titlePadding: const EdgeInsets.all(1),
                    content: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Text("provide split information"),
                          const SizedBox(height: 20),
                          TextFormField(
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
                    actions: [
                      // Next Button
                      OutlinedButton(
                        onPressed: () async {
                          await quickSplitForm.submitBillInfo();
                          //if (context.mounted) Navigator.of(context).pop();
                        },
                        child: const Text("Next"),
                      ),
                    ],
                  ),
                  AlertDialog(
                      //final registrationForm = context.read<RegistrationForm>();
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
                              child: ListView.builder(
                                  itemCount: userData.nonRegisteredFriends.length,
                                  itemBuilder: (context, index) {
                                    PublicProfile profile =
                                        userData.nonRegisteredFriends.values.elementAt(index);

                                    return ListTile(
                                      leading: PersonIcon(personName: profile.name),
                                      title: Text(profile.name),
                                      trailing: Checkbox(
                                        value: false,
                                        onChanged: (value) {},
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                      actions: [
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
