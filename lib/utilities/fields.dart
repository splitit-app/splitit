// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const textFieldDecoration_border = InputDecoration(
  border: OutlineInputBorder(),
);

const textFieldDecoration_filled = InputDecoration(
  filled: true,
);

final dateFieldDecoration_border = textFieldDecoration_border.copyWith(
  suffixIcon: const Icon(Icons.calendar_today),
);

final dateFieldDecoration_filled = textFieldDecoration_filled.copyWith(
  suffixIcon: const Icon(Icons.calendar_today),
);

class DateFormField extends StatelessWidget {
  final TextEditingController? controller;

  final InputDecoration? decoration;
  const DateFormField({
    super.key,
    this.controller,
    this.decoration = const InputDecoration(),
  });

  @override
  Widget build(BuildContext context) => TextFormField(
        controller: controller,
        validator: (value) {
          //TODO
          return null;
        },
        readOnly: true,
        onTap: () async {
          final selectedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime(2999, 12, 31),
          );
          if (selectedDate != null) {
            controller?.text = DateFormat.yMMMMd().format(selectedDate);
          }
        },
        decoration: decoration,
      );
}
