import 'package:flutter/material.dart';
import '../../../../runtime_models/user/public_profile.dart';

import '../../../../utilities/person_icon.dart';

class FriendInvolvementChecklist extends StatelessWidget {
  final List<PublicProfile> primarySplits;

  const FriendInvolvementChecklist({super.key, required this.primarySplits});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Column(
        children: [
          AppBar(
            title: const Text('Yeet'),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: primarySplits.length,
              itemBuilder: (context, index) => CheckboxListTile(
                value: false,
                onChanged: (value) {},
                secondary: PersonIcon(profile: primarySplits[index]),
                title:
                    Text(primarySplits[index].name, maxLines: 1, overflow: TextOverflow.ellipsis),
                //trailing: check,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
