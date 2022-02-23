import 'package:flutter/material.dart';

class MyProgressIndicatorCircle extends StatelessWidget {
  final int currentPage;
  final int order;
  const MyProgressIndicatorCircle(
      {Key? key, required this.order, required this.currentPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      decoration: BoxDecoration(
        color: currentPage == order ? Colors.orange : Colors.grey,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
