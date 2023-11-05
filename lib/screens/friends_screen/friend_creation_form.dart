import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../../runtime_models/user/public_profile.dart';
import '../../runtime_models/user/user_data.dart';
import '../../services/user_data_repository.dart';

class FriendCreationForm {
  final Locator read;
  final nameFieldController = TextEditingController();

  FriendCreationForm({required this.read});

  Future<void> createFriend() async {
    final UserData? userData = read();

    if (userData == null) return;
    if (userData.nonRegisteredFriends.length >= UserData.nonRegisteredFriendLimit) return;

    userData.nonRegisteredFriends.add(PublicProfile(
      uid: const Uuid().v1(),
      createdBy: userData.publicProfile,
      name: nameFieldController.text,
    ));

    read<UserDataRepository>().pushUserData(userData);
  }
}
