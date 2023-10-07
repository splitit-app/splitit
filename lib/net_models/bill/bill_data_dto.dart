import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_bs/runtime_models/bill/bill_data.dart';
import 'package:project_bs/runtime_models/bill/modules/bill_module_tax.dart';
import 'package:project_bs/runtime_models/bill/modules/bill_module_tip.dart';

part 'bill_data_dto.freezed.dart';
part 'bill_data_dto.g.dart';

@freezed
class BillDataDTO with _$BillDataDTO {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  factory BillDataDTO({
    required DateTime dateTime,
    required String name,
    required double totalSpent,
  }) = _BillDataDTO;

  factory BillDataDTO.fromJson(Map<String, dynamic> json) =>
      _$BillDataDTOFromJson(json);

  BillDataDTO._();

  BillData get toRuntimeObj => BillData(
        dateTime: dateTime,
        name: name,
        totalSpent: totalSpent,
        itemGroups: List.empty(),
        taxModule: BillModule_Tax(),
        tipModule: BillModule_Tip(),
      );
}
