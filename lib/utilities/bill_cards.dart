import 'package:flutter/material.dart';

class BillCards extends StatefulWidget {
  // Parameters:
  final String billName; // Bill Name Value
  final double billTotal; // Bill Total Value
  final String billDate;  // Bill Date Value
  final int countIteration;  // Different Colors for the cards depending on selection

  const BillCards({
    super.key,
    required this.billName,
    required this.billTotal,
    required this.billDate,
    required this.countIteration,
  });

  @override
  State<BillCards> createState() => _BillCardsState();
}

class _BillCardsState extends State<BillCards> {
  Color cardColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    if(widget.countIteration % 2 == 0){  // Every even card will be blue.
        cardColor = Colors.blue;
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            // color: Colors.red[400],
            color: cardColor, // Sets the color variable
            boxShadow: const [
              BoxShadow(
                blurRadius: 4,
                color: Colors.black38,
                offset: Offset(0, 2),
                spreadRadius: 2,
              )
            ],
            borderRadius: BorderRadius.circular(15.0)),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                // Icon Container (Profile)
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      // Container Image
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            // "https://static.wikia.nocookie.net/evade-nextbot/images/9/9a/Therock.png/revision/latest/thumbnail/width/360/height/360?cb=20220825084340",
                            // "https://media.tenor.com/k4TgrD7WDaUAAAAC/the-rock-face.gif",
                            "https://d1.awsstatic.com/MaxTsai.c5d516fa5ed7f7171553e9e2df1585e77ab88f87.png",
                            ),
                      ),
                      borderRadius: BorderRadius.circular(25.0)),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Bill Name
                  Text(
                    widget.billName,
                    style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  // const SizedBox(height: 5.0),
                  // Bill Date
                  Text(
                    // "Date: $billDate",
                    widget.billDate.substring(0, 10),
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  // Bill Time
                  // Text(
                  //   billDate.substring(10),
                  //   style: const TextStyle(fontSize: 16.0),
                  // ),
                  // Bill Total
                  const SizedBox(height: 10.0),
                  Text(
                    "Total: \$${widget.billTotal}",
                    style: const TextStyle(
                        fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              // Column(
              //   children: [
              //     Checkbox(value: true, onChanged: (bool? newValue){})
              //   ],
              // )
              /*
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "$billTotal",
                        style: const TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              )
              */
            ],
          ),
        ),
      ),
    );
  }
}
