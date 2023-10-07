// ignore_for_file: camel_case_types

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill_module_tax.freezed.dart';

@freezed
class BillModule_Tax with _$BillModule_Tax {
  factory BillModule_Tax({
    @Default(0) double totalTax,
  }) = _BillModule_Tax;
}
