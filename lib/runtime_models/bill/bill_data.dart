import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_bs/runtime_models/bill/item_group.dart';
import 'package:project_bs/runtime_models/bill/modules/bill_module_tax.dart';
import 'package:project_bs/runtime_models/bill/modules/bill_module_tip.dart';
import 'package:project_bs/runtime_models/user/public_profile.dart';

import '../../net_models/bill/bill_data_dto.dart';

part 'bill_data.freezed.dart';

@unfreezed
class BillData with _$BillData {
  @Assert('totalSpent >= 0')
  factory BillData({
    required DateTime dateTime,
    @Default("New Bill") String name,
    @Default(0) double totalSpent,
    PublicProfile? payer,
    List<PublicProfile>? primarySplits,
    List<PublicProfile>? secondarySplits,
    List<(PublicProfile, bool)>? paymentResolveStatuses,
    //
    required List<ItemGroup> itemGroups,
    required BillModule_Tax taxModule,
    required BillModule_Tip tipModule,
  }) = _BillData;

  BillData._();

  BillDataDTO get toDataTransferObj => BillDataDTO(
        dateTime: dateTime,
        name: name,
        totalSpent: totalSpent,
      );
}
//TODO: when a new item is added, initialized its tax list with the current number of taxes
//TODO: when a new tax is introduced, iterate through all the items and update their List<bool>
