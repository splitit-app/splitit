import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../utilities/fields.dart';
import 'quick_split_form.dart';

void quickSplitDialog(BuildContext context) {
  //UserData? userData = context.read<UserData>();
  showDialog(
    context: context,
    builder: (context) {
      final quickSplitForm = QuickSplitForm();

      return AlertDialog(
        icon: const Icon(MaterialSymbols.bolt_filled),
        title: const Text("Quick Split"),
        titlePadding: const EdgeInsets.all(24),
        content: SingleChildScrollView(
          child: Column(
            children: [
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
                controller: quickSplitForm.totalFieldController,
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
          // Add Button
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).pop(); // Exits out of the Dialog
            },
            child: const Text("Next"),
          ),
        ],
      );
    },
  );
}
