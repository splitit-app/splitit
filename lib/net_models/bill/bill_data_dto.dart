import 'package:freezed_annotation/freezed_annotation.dart';

import '../../runtime_models/bill/bill_data.dart';
import '../../runtime_models/bill/modules/bill_module_tax.dart';
import '../../runtime_models/bill/modules/bill_module_tip.dart';

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
    //
    required String payerUid,
    required DateTime lastUpdatedSession,
  }) = _BillDataDTO;

  factory BillDataDTO.fromJson(Map<String, dynamic> json) => _$BillDataDTOFromJson(json);

  BillDataDTO._();

  BillData toRuntimeObj(String uid) => BillData(
        uid: uid,
        dateTime: dateTime,
        name: name,
        totalSpent: totalSpent,
        payer: null,
        itemGroups: List.empty(),
        taxModule: BillModule_Tax(),
        tipModule: BillModule_Tip(),
        lastUpdatedSession: lastUpdatedSession,
      );
}
