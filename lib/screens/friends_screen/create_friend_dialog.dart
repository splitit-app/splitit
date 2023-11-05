import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:project_bs/services/user_data_repository.dart';
import 'package:provider/provider.dart';

import '../../runtime_models/user/user_data.dart';
import 'friend_creation_form.dart';

Future<void> createFriendDialog(BuildContext context) => showDialog(
      context: context,
      builder: (context) => StreamProvider.value(
          value: context.read<UserDataRepository>().userDataStream,
          initialData: null,
          builder: (context, child) {
            if (context.watch<UserData?>() == null) return const Placeholder();

            final friendCreationForm = FriendCreationForm(read: context.read);

            return AlertDialog(
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
                    //addFriendTextController.clear(); // Clears the input
                  },
                  //color: Theme.of(context).colorScheme.tertiaryContainer,
                  child: const Text("Add"),
                ),
              ],
            );
          }),
    );
