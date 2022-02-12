import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travelapp/components/my_header.dart';
import '../constant.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              const MyHeader(),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25, top: 25),
                    child: Text(
                      "Saved Places",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff545454),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 260,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        MyPlace(
                          imageTitle: "JAPAN",
                          imageAsset: "assets/images/Japan.png",
                        ),
                        MyPlace(
                          imageTitle: "BARCELONA",
                          imageAsset: "assets/images/Barcelona.png",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        MyPlace(
                          imageTitle: "GREECE",
                          imageAsset: "assets/images/Greece.png",
                        ),
                        MyPlace(
                          imageTitle: "ROME",
                          imageAsset: "assets/images/Rome.png",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyPlace extends StatelessWidget {
  final String imageAsset;
  final String imageTitle;

  const MyPlace({Key? key, required this.imageAsset, required this.imageTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          imageAsset,
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 10,
          top: 20,
          child: Text(
            imageTitle,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
