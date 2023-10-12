import 'package:flutter/material.dart';

import 'dart:math';

class PersonIcon extends StatelessWidget {
  const PersonIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        // color: Color(0xFF56585A),
        color: Colors.primaries[Random().nextInt(Colors.primaries
            .length)], // Random Colors (https://stackoverflow.com/questions/51340588/flutter-how-can-i-make-a-random-color-generator-background)
        shape: BoxShape.circle,
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "S", // Initials of the Person (Or could just be a profile image).
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
