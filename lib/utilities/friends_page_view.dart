import 'package:flutter/material.dart';
import 'package:project_bs/utilities/person_icon.dart';

class FriendsPageView extends StatefulWidget {
  const FriendsPageView({super.key});

  @override
  State<FriendsPageView> createState() => _FriendsPageViewState();
}

class _FriendsPageViewState extends State<FriendsPageView> {
  final PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                PersonIcon(personName: "Brandon"),
                Text("Brandon", style: TextStyle(fontSize: 16.0)),
              ],
            ),
            Column(
              children: [
                PersonIcon(personName: "Wei"),
                Text("Wei", style: TextStyle(fontSize: 16.0)),
              ],
            ),
            Column(
              children: [
                PersonIcon(personName: "Roberto"),
                Text("Roberto", style: TextStyle(fontSize: 16.0)),
              ],
            ),
          ],
        ),
        SizedBox(height: 20.0),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                PersonIcon(personName: "Ren"),
                Text("Ren", style: TextStyle(fontSize: 16.0)),
              ],
            ),
            Column(
              children: [
                PersonIcon(personName: "Sydney"),
                Text("Sydney", style: TextStyle(fontSize: 16.0)),
              ],
            ),
            Column(
              children: [
                PersonIcon(personName: "Max"),
                Text("Max", style: TextStyle(fontSize: 16.0)),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
