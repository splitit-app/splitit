import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../runtime_models/user/public_profile.dart';
import 'person_icon.dart';

class FriendTile extends StatelessWidget {
  final PublicProfile profile;

  const FriendTile({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Slidable(
        // Slide from the Left (or Top)
        startActionPane: ActionPane(
          // Controls how the Pane animates
          motion: const StretchMotion(),

          // All Actions:
          children: [
            SlidableAction(
              onPressed: ((context) {
                // Snackbar Message on action:
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('You\'ve abandoned your friend!'),
                    action: SnackBarAction(
                      label: 'Adios',
                      onPressed: () {
                        // (Delete) Removing Friend
                      },
                    ),
                  ),
                );
              }),
              backgroundColor: const Color(0xFFD42B2B),
              foregroundColor: Colors.white,
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(25.0)),
              icon: Symbols.delete,
              label: "Abandon",
            ),
          ],
        ),
        // Slide from the Right (or Bottom)
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          // All Actions:
          children: [
            SlidableAction(
              onPressed: ((context) {}),
              backgroundColor: const Color(0xFF2B82D4),
              foregroundColor: Colors.white,
              borderRadius: const BorderRadius.only(bottomRight: Radius.circular(25.0)),
              icon: Symbols.chat,
              label: "Nothing",
            ),
          ],
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFF1EFEF),
          ),
          child: ListTile(
            title: Text(profile.name),
            subtitle: const Text("Subtitles Subtitles Subtitles"),
            leading: PersonIcon(personName: profile.name),
            trailing: const Icon(Symbols.drag_handle),
          ),
        ));
  }
}
