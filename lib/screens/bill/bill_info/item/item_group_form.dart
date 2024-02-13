import 'package:provider/provider.dart';

import '../../../../runtime_models/bill/item/item_group.dart';
import '../bill_form.dart';

class ItemGroupForm {
  final Locator read;

  ItemGroupForm({required this.read});

  Future<void> removeItemGroup(ItemGroup itemGroup) => read<BillForm>().removeItemGroup(itemGroup);

  //TODO: name change ontap stuff
}
