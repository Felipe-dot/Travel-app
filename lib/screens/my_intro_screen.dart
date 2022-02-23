import 'package:flutter/material.dart';

class MyIntroScreen extends StatefulWidget {
  final String title;
  final String subtitle;

  const MyIntroScreen({Key? key, required this.title, required this.subtitle})
      : super(key: key);

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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/introLight.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 45),
          child: Column(
            children: [
              const Text(
                "Get Ready for",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
              ),
              Text(
                widget.title,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                widget.subtitle,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
