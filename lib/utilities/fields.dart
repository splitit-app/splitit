// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:project_bs/runtime_models/user/user_data.dart';
import 'package:project_bs/screens/friends_screen/friend_creation_form.dart';

const textFieldDecoration_filled = InputDecoration(
  filled: true,
);

final dateFieldDecoration = textFieldDecoration_filled.copyWith(
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
