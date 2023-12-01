import '../../net_models/bill/item_group_dto.dart';
import '../user/public_profile.dart';
import 'item.dart';
import 'split_rule.dart';

abstract class IItemGroup {
  String name = '';
  List<PublicProfile> primarySplits = [];
  List<Item> items = [];
  SplitRule splitRule = SplitRule.even;
  Map<String, double> get splitBalances;
  double get value;

  Map<String, double> splitPercentages = {};
  Map<String, double> splitShares = {};
  Map<String, double> splitExacts = {};

  ItemGroupDTO get toDataTransferObj;

  Map<String, double> get getSplitBalances;
}
