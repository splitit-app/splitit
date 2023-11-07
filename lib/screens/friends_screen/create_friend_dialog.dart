import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../../runtime_models/user/user_data.dart';
import 'friend_creation_form.dart';

Future<void> createFriendDialog(BuildContext context) => showDialog(
      context: context,
      builder: (context) {
        final friendCreationForm = FriendCreationForm(read: context.read);

        return context.watch<UserData?>() == null
            ? const Placeholder()
            : AlertDialog(
                title: const Text("Add Friend"),
                content: TextFormField(
                  controller: friendCreationForm.nameFieldController,
                  autofocus: true,
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
                  OutlinedButton(
                    onPressed: () async {
                      await friendCreationForm.createFriend();
                      if (context.mounted) Navigator.of(context).pop();
                    },
                    child: const Text("Add"),
                  ),
                ],
              );
      },
    );
