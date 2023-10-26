import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const textFieldDecoration = InputDecoration(
  filled: true,
);

final dateFieldDecoration = textFieldDecoration.copyWith(
  suffixIcon: const Icon(Icons.calendar_today),
);

class DateFormField extends StatelessWidget {
  const DateFormField({
    super.key,
    this.controller,
    this.decoration = const InputDecoration(),
  });

  final TextEditingController? controller;
  final InputDecoration? decoration;

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
