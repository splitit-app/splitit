import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../../../utilities/fields.dart';
import '../../runtime_models/user/user_data.dart';
import '../../services/user_data_repository.dart';
import 'quick_split_form.dart';

void quickSplitDialog(BuildContext context) {
  //UserData? userData = context.read<UserData>();
  showDialog(
    context: context,
    builder: (context) {
      return StreamProvider.value(
          value: context.read<UserDataRepository>().userDataStream,
          initialData: null,
          builder: (context, child) {
            if (context.watch<UserData?>() == null) return const Placeholder();

            final quickSplitForm = QuickSplitForm(read: context.read);
            return PageView(controller: quickSplitForm.pageController, children: [
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
                        decoration: InputDecoration(
                          labelText: "Split Name",
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                            onPressed: quickSplitForm.nameFieldController.clear,
                            icon: const Icon(Symbols.close),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      DateFormField(
                        decoration: const InputDecoration(
                          labelText: "Date",
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Symbols.calendar_today),
                        ),
                        controller: quickSplitForm.dateFieldController,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: quickSplitForm.totalSpentFieldController,
                        decoration: InputDecoration(
                          labelText: "Total",
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                            onPressed: quickSplitForm.nameFieldController.clear,
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
                      await quickSplitForm.createBill();
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
                  content: const SingleChildScrollView(
                    child: Column(
                      children: [
                        Text("select people to split equally"),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                  actions: [
                    OutlinedButton(
                      onPressed: () async {
                        await quickSplitForm.submitBill();
                        if (context.mounted) Navigator.of(context).pop();
                      },
                      child: const Text("Split It"),
                    ),
                  ]),
            ]);
          });
    },
  );
}
