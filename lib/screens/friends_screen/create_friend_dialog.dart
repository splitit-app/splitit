import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../../runtime_models/user/user_data.dart';
import 'friend_creation_form.dart';

void addFriendDialog(BuildContext context) {
  UserData? userData = context.read<UserData>();

  showDialog(
    context: context,
    builder: (context) {
      final friendCreationForm = FriendCreationForm(read: context.read, userData: userData);

      return StatefulBuilder(
        builder: (context, setState) => AlertDialog(
          title: const Text("Add Friend"),
          content: TextFormField(
            controller: friendCreationForm.nameFieldController,
            autofocus:
                true, // Auto-focuses on the text to allow for the keyboard to automatically display
            decoration: InputDecoration(
              labelText: "Name: ",
              hintText: "Roberto Cruz",
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(
                onPressed: friendCreationForm.nameFieldController.clear, // Clears the input
                icon: const Icon(Symbols.close),
              ),
            ),
          ),
          actions: [
            // Add Button
            MaterialButton(
              onPressed: () {
                friendCreationForm.createFriend();
                // setState(() {
                //   //friendNameList.add(addFriendTextController.text); // Adds user inputs into list
                // });
                //addFriendTextController.clear(); // Clears the input
                Navigator.of(context).pop(); // Exits out of the Dialog
                setState(() {});
              },
              color: Theme.of(context).colorScheme.tertiaryContainer,
              child: const Text("Add"),
            ),
          ],
        ),
      );
    },
  );
}
