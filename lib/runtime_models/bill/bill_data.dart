import 'package:freezed_annotation/freezed_annotation.dart';

import '../../net_models/bill/bill_data_dto.dart';
import '../user/public_profile.dart';
import '../user/user_data.dart';
import 'item/everything_else_item_group.dart';
import 'item/item_group.dart';
import 'modules/bill_module_tax.dart';
import 'modules/bill_module_tip.dart';

part 'bill_data.freezed.dart';

@unfreezed
class BillData with _$BillData {
  @Assert('totalSpent >= 0')
  factory BillData({
    required String uid,
    required DateTime dateTime,
    @Default("New Bill") String name,
    @Default(0) double totalSpent,
    PublicProfile? payer,
    required List<PublicProfile> primarySplits,
    List<PublicProfile>? secondarySplits,
    required Map<String, double> splitBalances,
    required Map<String, double> paymentResolveStatuses,
    //
    required EverythingElseItemGroup everythingElse,
    required List<ItemGroup> itemGroups,
    required BillModule_Tax taxModule,
    required BillModule_Tip tipModule,
    required DateTime lastUpdatedSession,
  }) = _BillData;

  factory BillData.fromDataTransferObj(BillDataDTO billDataDTO, String uid, UserData userData) {
    BillData billData = BillData(
      uid: uid,
      dateTime: billDataDTO.dateTime,
      name: billDataDTO.name,
      totalSpent: billDataDTO.totalSpent,
      payer: userData.publicProfile, //TODO: search database correctly
      primarySplits:
          billDataDTO.primarySplits.map((uid) => userData.nonRegisteredFriends[uid]!).toList(),
      splitBalances: billDataDTO.splitBalances
          .map((uid, balance) => MapEntry(userData.nonRegisteredFriends[uid]!.uid, balance)),
      paymentResolveStatuses: billDataDTO.paymentResolveStatuses.map(
          (uid, resolveStatus) => MapEntry(userData.nonRegisteredFriends[uid]!.uid, resolveStatus)),
      everythingElse:
          EverythingElseItemGroup.fromDataTransferObj(billDataDTO.everythingElse, userData),
      itemGroups: billDataDTO.itemGroups
          .map((itemGroup) => ItemGroup.fromDataTransferObj(itemGroup, userData))
          .toList(),
      taxModule: BillModule_Tax(),
      tipModule: BillModule_Tip(),
      lastUpdatedSession: billDataDTO.lastUpdatedSession,
    );

    billData.everythingElse.billData = billData;
    return billData;
  }

  BillData._();

  Map<String, double> get getSplitBalances {
    Map<String, double> splitBalances = {
      for (PublicProfile profile in [payer!] + primarySplits) profile.uid: 0
    };

    for (ItemGroup itemGroup in itemGroups) {
      for (PublicProfile profile in itemGroup.primarySplits) {
        splitBalances[profile.uid] =
            splitBalances[profile.uid]! + itemGroup.getSplitBalances[profile.uid]!;
      }
    }
    for (PublicProfile profile in everythingElse.primarySplits) {
      splitBalances[profile.uid] =
          splitBalances[profile.uid]! + everythingElse.getSplitBalances[profile.uid]!;
    }

    return splitBalances;
  }

  BillDataDTO get toDataTransferObj => BillDataDTO(
        dateTime: dateTime,
        name: name,
        totalSpent: totalSpent,
        payerUid: payer!.uid,
        primarySplits: primarySplits.map((profile) => profile.uid).toList(),
        splitBalances: splitBalances,
        paymentResolveStatuses: paymentResolveStatuses,
        everythingElse: everythingElse.toDataTransferObj,
        itemGroups: itemGroups.map((itemGroup) => itemGroup.toDataTransferObj).toList(),
        lastUpdatedSession: lastUpdatedSession,
      );

//TODO: when a new item is added, initialized its tax list with the current number of taxes
//TODO: when a new tax is introduced, iterate through all the items and update their List<bool>
}
