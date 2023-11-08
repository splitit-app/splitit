import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../runtime_models/user/user_data.dart';
import '../../services/bill_data_repository.dart';
import '../../utilities/scroll_animations.dart';

class QuickSplitForm {
  final Locator read;
  final pageController = PageController();

  final nameFieldController = TextEditingController();
  final dateFieldController = TextEditingController();
  final totalSpentFieldController = TextEditingController();

  QuickSplitForm({required this.read});

  Future<void> submitBillInfo() async {
    await pageController.animateToPageWithDefaults(1);
  }

  Future<void> createBill() async {
    final UserData? userData = read();

    String name = nameFieldController.text.trim();
    DateTime dateTime = DateFormat.yMMMMd().parse(dateFieldController.text.trim());
    double totalSpent = double.parse(totalSpentFieldController.text.trim());

    if (userData == null) return;

    read<BillDataRepository>().createBill(
      dateTime: dateTime,
      name: name,
      totalSpent: totalSpent,
      payer: userData.publicProfile,
    );
    // userData.nonRegisteredFriends.add(PublicProfile(
    //   uid: const Uuid().v1(),
    //   createdBy: userData.publicProfile,
    //   name: nameFieldController.text,
    // ));
    //read<UserDataRepository>().pushUserData(userData);
  }
}
