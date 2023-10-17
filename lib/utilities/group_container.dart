import 'package:flutter/material.dart';

class GroupContainer extends StatelessWidget {
  const GroupContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // One Group Box Container
      width: 175,
      height: 125,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        boxShadow: const [
          BoxShadow(
            blurRadius: 4,
            color: Colors.black45,
            offset: Offset(0, 2),
          )
        ],
        borderRadius: BorderRadius.circular(15),
      ),

      // Container Information
      child: Column(
        children: [
          // Text displaying the Group Name and Occupancy
          const Padding(
            padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
            child: Row(
              children: [
                Text("My Enemies",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("3 People", style: TextStyle(fontSize: 14.0)),
            ],
          ),

          // Rows for containing the Profile Icons within the Group Box
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Using a Stack Structure to allow for overlaps of the Profile Icons within the Container
                SizedBox(
                  width: 150,
                  child: Stack(
                    children: [
                      Align(
                        // Far Left Profile
                        alignment: const AlignmentDirectional(-0.90, 0.00),
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: const BoxDecoration(
                            color: Color(0xFFFB8E8E),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.30, 0.00),
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: const BoxDecoration(
                            color: Color(0xFF7AC3F9),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.30, 0.00),
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: const BoxDecoration(
                            color: Color(0xFFEECC88),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      // Far Right Profile
                      Align(
                        alignment: const AlignmentDirectional(0.90, 0.00),
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: const BoxDecoration(
                            color: Color(0xFF888BEE),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
