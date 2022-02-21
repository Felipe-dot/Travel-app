import 'package:flutter/material.dart';

import 'my_progress_indicator_circle.dart';

class MySliderProgressIndicator extends StatelessWidget {
  final int current;
  const MySliderProgressIndicator({Key? key, required this.current})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MyProgressIndicatorCircle(
            order: 0,
            currentPage: current,
          ),
          MyProgressIndicatorCircle(
            order: 1,
            currentPage: current,
          ),
          MyProgressIndicatorCircle(
            order: 2,
            currentPage: current,
          ),
        ],
      ),
    );
  }
}
