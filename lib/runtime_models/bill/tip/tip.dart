import 'package:freezed_annotation/freezed_annotation.dart';

import '../bill_data.dart';

part 'tip.freezed.dart';
part 'tip.g.dart';

@unfreezed
class Tip with _$Tip {
  factory Tip({
    @Default(true) bool usePercentage,
    @Default(0) double value,
    @Default(0) double rate,

    // Late Initialized Reference
    // ignore: invalid_annotation_target
    @JsonKey(includeFromJson: false, includeToJson: false) BillData? billData,
  }) = _Tip;

  factory Tip.fromJson(Map<String, dynamic> json) => _$TipFromJson(json);

  Tip._();

  double get estimatedRateFromValue => value / billData!.totalSpent;
  double get calculatedValueFromRate => rate * billData!.totalSpent;
}
