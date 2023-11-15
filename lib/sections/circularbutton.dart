import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  @required
  late final IconData buttonIcon;
  @required
  late void Function() buttonAction;
  final buttonColor;

  CircularButton(
      {required this.buttonColor,
      required this.buttonIcon,
      required this.buttonAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        color: buttonColor,
        icon: Icon(
          buttonIcon,
          color: Colors.pinkAccent,
          size: 20,
        ),
        onPressed: () {
          buttonAction;
        },
      ),
    );
  }
}
