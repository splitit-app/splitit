import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_bs/runtime_models/user/user_data.dart';

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
    required Map<String, double> splitBalances,
    required Map<String, double> paymentResolveStatuses,
    required DateTime lastUpdatedSession,
  }) = _BillDataDTO;

  factory BillDataDTO.fromJson(Map<String, dynamic> json) => _$BillDataDTOFromJson(json);

  BillDataDTO._();

  BillData toRuntimeObj(String uid, UserData userData) => BillData(
        uid: uid,
        dateTime: dateTime,
        name: name,
        totalSpent: totalSpent,
        payer: null,
        splitBalances: splitBalances
            .map((uid, balance) => MapEntry(userData.nonRegisteredFriends[uid]!, balance)),
        paymentResolveStatuses: paymentResolveStatuses.map(
            (uid, resolveStatus) => MapEntry(userData.nonRegisteredFriends[uid]!, resolveStatus)),
        itemGroups: List.empty(),
        taxModule: BillModule_Tax(),
        tipModule: BillModule_Tip(),
        lastUpdatedSession: lastUpdatedSession,
      );
}
