import 'package:freezed_annotation/freezed_annotation.dart';

import '../../runtime_models/bill/tax/tax.dart';
import 'item_group_dto.dart';

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
    required List<String> primarySplits,
    required Map<String, double> splitBalances,
    required Map<String, double> paymentResolveStatuses,
    //
    required List<ItemGroupDTO> itemGroups,
    required ItemGroupDTO everythingElse,
    //required List<Tax> taxes,

    //
    required DateTime lastUpdatedSession,
  }) = _BillDataDTO;

  factory BillDataDTO.fromJson(Map<String, dynamic> json) => _$BillDataDTOFromJson(json);
}
