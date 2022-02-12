import 'package:flutter/material.dart';

import '../constant.dart';
import 'dart:math' as math;

class MyHeader extends StatelessWidget {
  const MyHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        color: lightWhite,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 10,
            child: Transform.rotate(
              angle: -4.35 * math.pi / 180,
              child: Image.asset(
                'assets/images/light_hand.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 15,
            left: 280,
            child: Row(
              children: [
                Icon(
                  Icons.notifications,
                  size: 24,
                  color: Color(0xff545454),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.widgets,
                  size: 24,
                  color: Color(0xff545454),
                ),
              ],
            ),
          ),
          Positioned(
            top: 80,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome,",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Charlie",
                  style: TextStyle(
                    fontSize: 35,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Positioned(
            top: 230,
            left: 15,
            child: Container(
              alignment: Alignment.center,
              height: 41,
              width: 330,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black.withOpacity(0.5),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.search,
                  size: 25,
                ),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
