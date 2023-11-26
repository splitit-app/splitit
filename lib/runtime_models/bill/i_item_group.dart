import '../../net_models/bill/item_group_dto.dart';
import '../user/public_profile.dart';
import 'item.dart';
import 'split_rule.dart';

abstract class IItemGroup {
  String get name;
  List<PublicProfile> get primarySplits;
  List<Item> get items;
  SplitRule splitRule = SplitRule.even;
  Map<String, double> get splitBalances;
  double get value;

  Map<String, double> get splitPercentages;
  Map<String, double> get splitShares;
  Map<String, double> get splitExacts;

  ItemGroupDTO get toDataTransferObj;

  Map<String, double> get getSplitBalances;
}
