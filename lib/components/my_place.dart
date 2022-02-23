import 'package:flutter/material.dart';

class MyPlace extends StatelessWidget {
  final String imageAsset;
  final String imageTitle;

  const MyPlace({Key? key, required this.imageAsset, required this.imageTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          child: Image.asset(
            imageAsset,
            fit: BoxFit.cover,
          ),
          onTap: () {
            print("ESTOU FUNCIONANDO");
          },
        ),
        Positioned(
          left: 10,
          top: 20,
          child: Text(
            imageTitle,
            style: const TextStyle(
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
