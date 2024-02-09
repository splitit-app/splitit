import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:provider/provider.dart';

import '../../../../utilities/fields.dart';
import '../bill_form.dart';

void itemGroupDialog(BuildContext context) {
  final billForm = BillForm(read: context.read);
  // final BillData billData = context.watch();

  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          icon: const Icon(MaterialSymbols.category_filled),
          title: const Text("New Item Group"),
          content: Column(
            children: [
              TextFormField(
                // controller:
                decoration: textFieldDecoration_border.copyWith(
                  labelText: "Item Group Name",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(MaterialSymbols.close),
                  ),
                ),
              ),
              const Text("Split Rule"),
              const Text("People Involved"),
              const Text("Items"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Cancel"),
            ),
            OutlinedButton(
              onPressed: () async {
                await billForm.addItemGroup();
                if (context.mounted) Navigator.of(context).pop();
              },
              child: const Text("Submit"),
            ),
          ],
        );
      });
}
