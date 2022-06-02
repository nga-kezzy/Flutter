import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Color color;
  final Color backgroundColor;
  final VoidCallback onClicked;
  final bool isOnClick;

  const ButtonWidget({
    Key? key,
    required this.text,
    this.color = Colors.white,
    this.backgroundColor = Colors.black,
    required this.onClicked,
    required this.isOnClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 30,
            color: color,
          ),
        ),
        onPressed: isOnClick ? null : onClicked,
      );
}
