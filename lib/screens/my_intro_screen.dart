import 'package:flutter/material.dart';

class MyIntroScreen extends StatefulWidget {
  const MyIntroScreen({Key? key}) : super(key: key);

  @override
  _MyIntroScreenState createState() => _MyIntroScreenState();
}

class _MyIntroScreenState extends State<MyIntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/introLight.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 45),
          child: Container(
              child: Column(
            children: [
              Text(
                "Get Ready for",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
              ),
              Text(
                "New Adventures",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Pack your things and make more memories Outdoor",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
