import 'package:provider/provider.dart';

import '../../../runtime_models/bill/bill_data.dart';
import '../../../runtime_models/bill/item.dart';
import '../../../runtime_models/bill/item_group.dart';
import '../../../services/bill_data_repository.dart';

class BillForm {
  final Locator read;

  BillForm({required this.read});

  Future<void> addItemGroup() async {
    final BillData billData = read();

    billData.itemGroups.add(ItemGroup(
      name: 'Dummy Item Group',
      primarySplits: [billData.payer!] + billData.primarySplits,
      items: [Item(taxableStatusList: [])],
      splitRules: List.empty(),
      splitBalances: {},
    ));

    try {
      read<BillDataRepository>().pushBillData(billData);
    } catch (e) {
      print(e);
    }
  }

  Future<void> bruh() async {
    final BillData billData = read();

    read<BillDataRepository>().pushBillData(billData);
  }
}
