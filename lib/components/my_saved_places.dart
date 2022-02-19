import 'package:flutter/material.dart';
import 'my_place.dart';

class MySavedPlaces extends StatelessWidget {
  const MySavedPlaces({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}