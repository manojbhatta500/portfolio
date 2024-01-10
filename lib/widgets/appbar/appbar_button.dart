import 'package:flutter/material.dart';

class AppbarButton extends StatelessWidget {
  AppbarButton({super.key, required this.title, required this.customfunction});

  final String title;
  final VoidCallback customfunction;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: customfunction,
      style: TextButton.styleFrom(
          textStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      )),
      child: Center(
          child: Text(
        title,
        style: TextStyle(fontSize: 20, color: Colors.black),
      )),
    );
  }
}
