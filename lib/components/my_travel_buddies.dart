import 'package:flutter/material.dart';

import '../constant.dart';
import 'my_buddy.dart';

class MyTravelBuddies extends StatefulWidget {
  const MyTravelBuddies({Key? key}) : super(key: key);

  @override
  _MyTravelBuddiesState createState() => _MyTravelBuddiesState();
}

class _MyTravelBuddiesState extends State<MyTravelBuddies> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      padding: const EdgeInsets.all(15),
      alignment: Alignment.topLeft,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    enableFeedback: true,
                    fixedSize: const Size(70, 70),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Color(0xff828282),
                  ),
                ),
              ],
            ),
            const MyBuddy(
              myBuddyImage: 'assets/images/friend1.png',
              myBuddyColor: lightGreen,
              myBuddyAge: "18",
              myBuddyName: "Felipe",
              myBuddyStatus: "Friend",
            ),
            const MyBuddy(
              myBuddyImage: 'assets/images/friend2.png',
              myBuddyColor: Color(0xff9BA1FF),
              myBuddyAge: "28",
              myBuddyName: "Carlos",
              myBuddyStatus: "Friend",
            ),
          ],
        ),
      ),
    );
  }
}
