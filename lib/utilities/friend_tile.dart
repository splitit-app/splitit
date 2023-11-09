import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../runtime_models/user/public_profile.dart';
import 'person_icon.dart';

class FriendTile extends StatelessWidget {
  final PublicProfile profile;
  final int index;

  const FriendTile({super.key, required this.profile, required this.index});

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
              // First Tile have border-edges, the remainder have none.
              borderRadius: index == 0
                  ? const BorderRadius.only(topLeft: Radius.circular(25.0))
                  : const BorderRadius.horizontal(left: Radius.circular(0.0)),
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
              // First Tile have border-edges, the remainder have none.
              borderRadius: index == 0
                  ? const BorderRadius.only(topRight: Radius.circular(25.0))
                  : const BorderRadius.horizontal(right: Radius.circular(0.0)),
              icon: Symbols.chat,
              label: "Chat",
            ),
          ],
        ),
        child: Container(
          decoration: const BoxDecoration(
            //color: Color(0xFFF1EFEF),
          ),
          child: ListTile(
            
            title: Text(profile.name),
            subtitle: const Text("Subtitles Subtitles Subtitles"),
            leading: PersonIcon(profile: profile),
            trailing: const Icon(Symbols.drag_handle),
          ),
        ));
  }
}
