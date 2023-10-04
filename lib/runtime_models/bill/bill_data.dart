import 'package:freezed_annotation/freezed_annotation.dart';

import '../../net_models/bill/bill_data_dto.dart';
import '../friend/friend.dart';

part 'bill_data.freezed.dart';

@unfreezed
class BillData with _$BillData {
  factory BillData({
    required DateTime dateTime,
    @Default("New Bill") String name,
    @Default(0) double totalSpent,
    Friend? payer, //TODO: Annotate default to current user?
    List<Friend>? primarySplits,
    List<Friend>? secondarySplits,
    List<bool>? splitRules, //TODO: Replace placeholder type bool
    List<(Friend, bool)>? paymentResolveStatuses,
  }) = _BillData;

  BillData._();

  BillDataDTO toDataTransferObj() => BillDataDTO(
        dateTime: dateTime,
        name: name,
        totalSpent: totalSpent,
      );
}
