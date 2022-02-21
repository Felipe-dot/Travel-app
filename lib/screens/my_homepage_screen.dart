import 'package:flutter/material.dart';
import 'package:travelapp/components/my_header.dart';
import 'package:travelapp/components/my_saved_places.dart';
import 'package:travelapp/components/my_travel_buddies.dart';

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
              const MyTravelBuddies(),
            ],
          ),
        ],
      ),
    );
  }
}
