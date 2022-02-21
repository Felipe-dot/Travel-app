import 'package:flutter/material.dart';
import 'package:travelapp/components/my_slider_progress_indicator.dart';
import 'package:travelapp/screens/my_intro_screen.dart';

class MySliderScreen extends StatefulWidget {
  const MySliderScreen({Key? key}) : super(key: key);

  @override
  _MySliderScreenState createState() => _MySliderScreenState();
}

class _MySliderScreenState extends State<MySliderScreen> {
  String? swipeDirection;
  int currentPage = 0;
  List<Widget> myPages = const [
    MyIntroScreen(),
    MyIntroScreen(),
    MyIntroScreen(),
  ];

  void _onPanUpdate(DragUpdateDetails details) {
    setState(() {
      swipeDirection = details.delta.dx < 0 ? 'left' : 'right';
    });
  }

  void _onPanEnd(DragEndDetails details) {
    //handle swipe left event
    if (swipeDirection == 'left') {
      if (currentPage < myPages.length - 1) {
        setState(() {
          currentPage++;
        });
      } else {
        Navigator.pushNamed(context, '/myHomePage');
      }
    }
    //handle swipe right event
    if (swipeDirection == 'right') {
      if (currentPage > 0) {
        setState(() {
          currentPage--;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            GestureDetector(
              child: Container(
                child: myPages[currentPage],
              ),
              onPanUpdate: _onPanUpdate,
              onPanEnd: _onPanEnd,
            ),
            Positioned(
              left: 130,
              top: 160,
              child: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: MySliderProgressIndicator(current: currentPage),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
