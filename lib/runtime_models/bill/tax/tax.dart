import 'package:freezed_annotation/freezed_annotation.dart';

import '../bill_data.dart';

part 'tax.freezed.dart';
part 'tax.g.dart';

@unfreezed
class Tax with _$Tax {
  @Assert('value >= 0')
  factory Tax({
    @Default('New Item') String name,
    @Default(0) double value,
    @Default(true) bool includedInTotal,

    // Late Initialized Reference
    // ignore: invalid_annotation_target
    @JsonKey(includeFromJson: false, includeToJson: false) BillData? billData,
  }) = _Tax;

  factory Tax.fromJson(Map<String, dynamic> json) => _$TaxFromJson(json);

  Tax._();

  double get estimatedRate => value / billData!.totalSpent;
}
