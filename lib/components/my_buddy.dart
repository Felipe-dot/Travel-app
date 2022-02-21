import 'package:flutter/material.dart';

import '../constant.dart';

class MyBuddy extends StatelessWidget {
  final String myBuddyName;
  final String myBuddyAge;
  final String myBuddyStatus;
  final String myBuddyImage;
  final Color myBuddyColor;

  const MyBuddy(
      {Key? key,
      required this.myBuddyImage,
      required this.myBuddyColor,
      required this.myBuddyName,
      required this.myBuddyAge,
      required this.myBuddyStatus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 35),
          height: 150,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(50),
            ),
            color: myBuddyColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Name",
                style: TextStyle(
                  color: lightWhite,
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                ),
              ),
              Text(
                myBuddyName,
                style: const TextStyle(
                  color: lightWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const Text(
                "Age",
                style: TextStyle(
                  color: lightWhite,
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                ),
              ),
              Text(
                myBuddyAge,
                style: const TextStyle(
                  color: lightWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const Text(
                "Status",
                style: TextStyle(
                  color: lightWhite,
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                ),
              ),
              Text(
                myBuddyStatus,
                style: const TextStyle(
                  color: lightWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 55,
          child: SizedBox(
            height: 150,
            width: 100,
            child: Image.asset(
              myBuddyImage,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}

