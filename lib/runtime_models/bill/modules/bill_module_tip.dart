// ignore_for_file: camel_case_types

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill_module_tip.freezed.dart';

@freezed
class BillModule_Tip with _$BillModule_Tip {
  factory BillModule_Tip({
    @Default(0) double totalTip,
    @Default(false) bool includedInTotalSpent,
  }) = _BillModule_Tip;
}
