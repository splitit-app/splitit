import 'package:flutter/material.dart';
import 'package:project_bs/runtime_models/user/user_data.dart';
import '../../services/user_data_repository.dart';
import 'package:project_bs/utilities/scroll_animations.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../../runtime_models/user/public_profile.dart';

class QuickSplitForm {
  final Locator read;
  QuickSplitForm({required this.read});
  final pageController = PageController();
  final nameFieldController = TextEditingController();
  final dateFieldController = TextEditingController();
  final totalFieldController = TextEditingController();
  Future<void> createBill() async {
    final UserData? userData = read();
    String name = nameFieldController.text.trim();
    DateTime date = dateFieldController as DateTime;
    double total = totalFieldController as double;
    if (userData == null) return;
    //print(emailFieldController.text);
    // if (await AuthenticationService().isValid_Email(_emailController.text)) {
    await pageController.animateToPageWithDefaults(1);
    // }
    // userData.nonRegisteredFriends.add(PublicProfile(
    //   uid: const Uuid().v1(),
    //   createdBy: userData.publicProfile,
    //   name: nameFieldController.text,
    // ));
    //read<UserDataRepository>().pushUserData(userData);
  }

  Future<void> submitBill() async {
    await pageController.animateToPageWithDefaults(1);
  }
}
