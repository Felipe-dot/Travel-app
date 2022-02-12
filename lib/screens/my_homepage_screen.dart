import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../constant.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: lightWhite,
      //   elevation: 0,
      //   actions: [
      //     Icon(Icons.notifications),
      //     Icon(Icons.widgets),
      //   ],
      // ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: lightWhite,
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
          ],
        ),
      ),
    );
  }
}
