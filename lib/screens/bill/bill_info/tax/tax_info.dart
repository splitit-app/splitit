import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:provider/provider.dart';
import 'package:splitit/runtime_models/bill/tax/tax.dart';

import '../../../../utilities/decorations.dart';

class TaxInfo extends StatefulWidget {
  final Tax tax;

  const TaxInfo({super.key, required this.tax});

  @override
  State<TaxInfo> createState() => _TaxInfoState();
}

class _TaxInfoState extends State<TaxInfo> {
  @override
  Widget build(BuildContext context) => Provider.value(
        value: widget.tax,
        child: Scaffold(
          appBar: AppBar(
            shape: appBarShape,
            title: Text(widget.tax.name),
            centerTitle: true,
            backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
            actions: [
              IconButton(
                onPressed: () async {
                  // await itemGroupForm.removeItemGroup(widget.itemGroup as ItemGroup);

                  if (mounted) {
                    Navigator.of(context).pop();
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        behavior: SnackBarBehavior.floating, content: Text("Tax Deleted")));
                  }
                },
                icon: const Icon(MaterialSymbols.delete),
              )
            ],
          ),
        ),
      );
}
