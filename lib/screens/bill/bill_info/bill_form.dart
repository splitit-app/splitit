import 'package:provider/provider.dart';

import '../../../runtime_models/bill/bill_data.dart';
import '../../../runtime_models/bill/item/item.dart';
import '../../../runtime_models/bill/item/item_group.dart';
import '../../../runtime_models/bill/split_rule.dart';
import '../../../runtime_models/bill/tax/tax.dart';
import '../../../runtime_models/user/public_profile.dart';
import '../../../services/bill_data_repository.dart';

class BillForm {
  final Locator read;

  BillForm({required this.read});

  Future<void> addItemGroup() async {
    final BillData billData = read();

    final primarySplits = [billData.payer!] + billData.primarySplits;

    billData.itemGroups.add(ItemGroup(
      name: '',
      primarySplits: primarySplits,
      items: [Item(taxableStatusList: [])],
      splitRule: SplitRule.even,
      splitBalances: {},
      //
      splitPercentages: {
        for (PublicProfile profile in primarySplits) profile.uid: 1 / primarySplits.length
      },
      splitShares: {for (PublicProfile profile in primarySplits) profile.uid: 1},
      splitExacts: {for (PublicProfile profile in primarySplits) profile.uid: 0},
    ));

    try {
      read<BillDataRepository>().pushBillData(billData);
    } catch (e) {
      print(e);
    }
  }

  Future<void> removeItemGroup(ItemGroup itemGroup) async {
    final BillData billData = read();

    billData.itemGroups.remove(itemGroup);

    read<BillDataRepository>().pushBillData(billData);
  }

  Future<void> addTax() async {
    final BillData billData = read();

    billData.addTax(Tax(
      name: 'New Tax',
      value: 0,
      includedInTotal: false,
    ));

    try {
      read<BillDataRepository>().pushBillData(billData);
    } catch (e) {
      print(e);
    }
  }
}
