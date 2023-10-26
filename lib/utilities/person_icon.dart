import 'package:flutter/material.dart';

import 'dart:math';

class PersonIcon extends StatelessWidget {
  final String personName;

  const PersonIcon({
    super.key,
    this.personName = "?",  // Not a required parameter for now.
  });

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

        boxShadow: const [
          BoxShadow(
            blurRadius: 3,
            color: Colors.black38,
            offset: Offset(0, 2),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            // "S", // Initials of the Person (Or could just be a profile image).
            personName.substring(0, 1), // First Name initials
            style: const TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
