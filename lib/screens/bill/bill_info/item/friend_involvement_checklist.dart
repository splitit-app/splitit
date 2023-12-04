import 'package:flutter/material.dart';
import '../../../../runtime_models/user/public_profile.dart';

import '../../../../utilities/person_icon.dart';
import 'friend_involvement_checklist_form.dart';

class FriendInvolvementChecklist extends StatelessWidget {
  final FriendInvolvementChecklistForm friendInvolvementChecklistForm;

  const FriendInvolvementChecklist({super.key, required this.friendInvolvementChecklistForm});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Column(
        children: [
          AppBar(
            title: const Text('Select individuals:'),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: friendInvolvementChecklistForm.friendInvolvements.length,
              itemBuilder: (context, index) {
                PublicProfile profile =
                    friendInvolvementChecklistForm.friendInvolvements.keys.elementAt(index);

                return StatefulBuilder(
                  builder: (context, setState) => CheckboxListTile(
                    value: friendInvolvementChecklistForm.friendInvolvements[profile],
                    onChanged: (value) => setState(
                        () => friendInvolvementChecklistForm.friendInvolvements[profile] = value!),
                    secondary: PersonIcon(profile: profile),
                    title: Text(profile.name, maxLines: 1, overflow: TextOverflow.ellipsis),
                    //trailing: check,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
