import 'package:flutter/material.dart';
import 'package:travelapp/components/my_header.dart';
import 'package:travelapp/components/my_saved_places.dart';
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20, top: 20),
                    child: const Text(
                      "Saved Places",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff545454),
                      ),
                    ),
                  ),
                ],
              ),
              const MySavedPlaces(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20, top: 20),
                    child: const Text(
                      "Travel Buddies",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff545454),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                padding: const EdgeInsets.all(15),
                alignment: Alignment.topLeft,
                child: Row(
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
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          MyBuddy(),
                        ],
                      ),
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

class MyBuddy extends StatelessWidget {
  const MyBuddy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 35),
          height: 150,
          width: 100,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(50),
            ),
            color: lightGreen,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                "Name",
                style: TextStyle(
                  color: lightWhite,
                  fontWeight: FontWeight.w400,
                  fontSize: 10,     
                ),
              ),
              Text(
                "Ashok",
                style: TextStyle(
                  color: lightWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Text(
                "Age",
                style: TextStyle(
                  color: lightWhite,
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                ),
              ),
              Text(
                "27",
                style: TextStyle(
                  color: lightWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Text(
                "Status",
                style: TextStyle(
                  color: lightWhite,
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                ),
              ),
              Text(
                "Friend",
                style: TextStyle(
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
              'assets/images/friend1.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
