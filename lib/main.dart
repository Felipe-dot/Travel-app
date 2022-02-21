import 'package:flutter/material.dart';

import 'screens/my_homepage_screen.dart';
import 'screens/my_slider_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MySliderScreen(),
        '/myHomePage': (context) => const MyHomePage(),
      },
    );
  }
}
