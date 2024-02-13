import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';

import '../../../../runtime_models/bill/item/i_item_group.dart';
import '../../../../runtime_models/bill/item/item.dart';
import '../../../../utilities/fields.dart';

class ItemSubsection extends StatefulWidget {
  final IItemGroup itemGroup;
  final bool isEverythingElseItemGroup;

  const ItemSubsection(
      {super.key, required this.itemGroup, required this.isEverythingElseItemGroup});

  @override
  State<ItemSubsection> createState() => _ItemSubsectionState();
}

class _ItemSubsectionState extends State<ItemSubsection> {
  @override
  Widget build(BuildContext context) => Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Items", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            TextButton(
              onPressed: () async {
                final items = List.of(widget.itemGroup.items);
                items.add(Item(taxableStatusList: []));
                widget.itemGroup.items = items;

                setState(() {});
              },
              child: Text(widget.isEverythingElseItemGroup ? 'Specify' : 'Add'),
            )
          ],
        ),
        const SizedBox(height: 8),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12.0)),
              color: Theme.of(context).colorScheme.surfaceVariant),
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            //padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            itemCount: widget.itemGroup.items.length,
            itemBuilder: (context, index) {
              final item = widget.itemGroup.items[index];

              return ListTile(
                onTap: () async {
                  await editItemDialog(item);
                  setState(() {});
                },
                leading: Text('${index + 1}.'),
                title: Row(
                  children: [
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
                        if (!widget.isEverythingElseItemGroup &&
                            widget.itemGroup.items.length == 1 &&
                            item.quantity == 1) return;

                        item.quantity--;
                        if (item.quantity <= 0) {
                          final items = List.of(widget.itemGroup.items);
                          items.remove(item);
                          widget.itemGroup.items = items;
                        }
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
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) =>
                const Divider(height: 2, indent: 16, endIndent: 16),
          ),
        ),
      ]);

  Future<void> editItemDialog(Item item) {
    final nameController = TextEditingController(text: item.name);
    final valueController = TextEditingController(text: item.value.toStringAsFixed(2));
    final quantityController = TextEditingController(text: item.quantity.toString());

    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(MaterialSymbols.description_filled),
        title: const Text("Edit Item"),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                decoration: textFieldDecoration_border.copyWith(
                  labelText: "Name",
                  suffixIcon: IconButton(
                    onPressed: () => nameController.text = '',
                    icon: const Icon(MaterialSymbols.cancel),
                  ),
                ),
                controller: nameController,
                // onTap: () => nameController.selection =
                //     TextSelection(baseOffset: 0, extentOffset: nameController.text.length),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: textFieldDecoration_border.copyWith(
                  labelText: "Value",
                  suffixIcon: IconButton(
                    onPressed: () => valueController.text = '',
                    icon: const Icon(MaterialSymbols.cancel),
                  ),
                ),
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                controller: valueController,
                // onTap: () => valueController.selection =
                //     TextSelection(baseOffset: 0, extentOffset: valueController.text.length),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: textFieldDecoration_border.copyWith(
                  labelText: "Quantity",
                  suffixIcon: IconButton(
                    onPressed: () => quantityController.text = '',
                    icon: const Icon(MaterialSymbols.cancel),
                  ),
                ),
                keyboardType: TextInputType.number,
                controller: quantityController,
                // onTap: () => quantityController.selection =
                //     TextSelection(baseOffset: 0, extentOffset: quantityController.text.length),
              ),
            ],
          ),
        ),
        actions: [
          OutlinedButton(
            onPressed: () {
              if (nameController.text.isNotEmpty) item.name = nameController.text;

              final value = double.tryParse(valueController.text);
              if (value != null) item.value = value;

              final quantity = int.tryParse(quantityController.text);
              if (quantity != null) item.quantity = quantity;

              if (context.mounted) Navigator.of(context).pop();
            },
            child: const Text("Ok"),
          ),
        ],
      ),
    );
  }
}
