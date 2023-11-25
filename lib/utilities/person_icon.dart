import 'dart:math';

import 'package:flutter/material.dart';

import '../runtime_models/user/public_profile.dart';

class PersonIcon extends StatelessWidget {
  final PublicProfile profile;
  final double height;
  final double width;

  const PersonIcon({super.key, required this.profile, this.height = 40, this.width = 40});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        // Random Colors (https://stackoverflow.com/questions/51340588/flutter-how-can-i-make-a-random-color-generator-background)
        color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        shape: BoxShape.circle,

        boxShadow: const [
          BoxShadow(
            blurRadius: 3,
            color: Colors.black38,
            offset: Offset(0, 2),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Center(
        child: Text(
          profile.name.isEmpty ? '?' : profile.name[0],
          style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
