import 'package:project_bs/runtime_models/bill/bill_data.dart';
import 'package:project_bs/runtime_models/bill/item/item_group.dart';
import 'package:project_bs/runtime_models/user/public_profile.dart';
import 'package:provider/provider.dart';

class DummyBillForm {
  final Locator read;

  DummyBillForm({required this.read});
  bool triggerRecalculate = false;

  void calculate() {
    final BillData billData = read();

    final profileToIndex = Map.fromIterables(billData.primarySplits,
        List.generate(billData.primarySplits.length, (index) => index));

    // billData.splitBalances = Map.fromIterables(
    //     billData.primarySplits, List.filled(billData.primarySplits.length, 0));

    // for (ItemGroup itemGroup in billData.itemGroups) {
    //   for (PublicProfile profile in itemGroup.primarySplits) {
    //     billData.splitBalances[profile] = billData.splitBalances[profile]! +
    //         itemGroup.splitBalances[profile]!;
    //   }
    // }
  }
}
