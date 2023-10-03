import 'package:freezed_annotation/freezed_annotation.dart';

import '../friend/friend.dart';

part 'bill_data.freezed.dart';
part 'bill_data.g.dart';

@unfreezed
class BillData with _$BillData {
  factory BillData({
    required DateTime dateTime,
    required String name,
    required double totalSpent,
    required Friend payer,
    required List<Friend> primarySplits,
    required List<Friend> secondarySplits,
    required List<bool> splitRules, //TODO: Replace placeholder type bool
    required List<(Friend, bool)> paymentResolveStatuses,
  }) = _BillData;

  factory BillData.fromJson(Map<String, dynamic> json) =>
      _$BillDataFromJson(json);
}
