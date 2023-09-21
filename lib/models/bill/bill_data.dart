import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill_data.freezed.dart';
part 'bill_data.g.dart';

@freezed
class BillData with _$BillData {
  factory BillData({
    required String name,
  }) = _BillData;

  factory BillData.fromJson(Map<String, dynamic> json) =>
      _$BillDataFromJson(json);
}
