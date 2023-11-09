import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../runtime_models/user/user_data.dart';
import '../../utilities/person_icon.dart';

class FriendsPageView extends StatelessWidget {
  final int startingIndex;

  const FriendsPageView({super.key, required this.startingIndex});

  //final PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    final friends = context.watch<UserData?>()?.nonRegisteredFriends;

    // const Column(
    //   children: [
    //     Row(
    //       mainAxisSize: MainAxisSize.max,
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       children: [
    //         Column(
    //           children: [
    //             PersonIcon(personName: "Brandon"),
    //             Text("Brandon", style: TextStyle(fontSize: 16.0)),
    //           ],
    //         ),
    //         Column(
    //           children: [
    //             PersonIcon(personName: "Wei"),
    //             Text("Wei", style: TextStyle(fontSize: 16.0)),
    //           ],
    //         ),
    //         Column(
    //           children: [
    //             PersonIcon(personName: "Roberto"),
    //             Text("Roberto", style: TextStyle(fontSize: 16.0)),
    //           ],
    //         ),
    //       ],
    //     ),
    //     SizedBox(height: 20.0),
    //     Row(
    //       mainAxisSize: MainAxisSize.max,
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       children: [
    //         Column(
    //           children: [
    //             PersonIcon(personName: "Ren"),
    //             Text("Ren", style: TextStyle(fontSize: 16.0)),
    //           ],
    //         ),
    //         Column(
    //           children: [
    //             PersonIcon(personName: "Sydney"),
    //             Text("Sydney", style: TextStyle(fontSize: 16.0)),
    //           ],
    //         ),
    //         Column(
    //           children: [
    //             PersonIcon(personName: "Max"),
    //             Text("Max", style: TextStyle(fontSize: 16.0)),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ],
    // );

    return friends == null
        ? const Placeholder()
        : GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemCount: min(friends.length - startingIndex, 6),
            itemBuilder: (context, index) => Column(
              children: [
                PersonIcon(profile: friends.values.elementAt(startingIndex + index)),
                Text(friends.values.elementAt(startingIndex + index).name,
                    style: const TextStyle(fontSize: 16.0))
              ],
            ),
          );
  }
}
