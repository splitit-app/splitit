import '../../net_models/bill/item_group_dto.dart';
import '../user/public_profile.dart';
import 'item.dart';
import 'split_rules/split_rule.dart';

abstract class IItemGroup {
  String get name;
  List<PublicProfile> get primarySplits;
  List<Item> get items;
  List<SplitRule> get splitRules;
  Map<String, double> get splitBalances;
  double get value;

  ItemGroupDTO get toDataTransferObj;

  Map<String, double> get getSplitBalances;
}
