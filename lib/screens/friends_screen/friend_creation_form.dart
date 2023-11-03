import 'package:flutter/material.dart';
import 'package:project_bs/runtime_models/user/user_data.dart';
import 'package:project_bs/services/user_data_repository.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../../runtime_models/user/public_profile.dart';

class FriendCreationForm {
  FriendCreationForm({required this.read, required this.userData});

  final Locator read;
  final UserData userData;

  final nameFieldController = TextEditingController();

  Future<void> createFriend() async {
    if (userData.nonRegisteredFriends.length >= UserData.nonRegisteredFriendLimit) return;

    userData.nonRegisteredFriends.add(PublicProfile(
      uid: const Uuid().v1(),
      createdBy: userData.publicProfile,
      name: nameFieldController.text,
    ));

    read<UserDataRepository>().pushUserData(userData);
  }
}
