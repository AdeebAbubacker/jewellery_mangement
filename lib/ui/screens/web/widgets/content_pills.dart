

import 'package:flutter/material.dart';

class ContentPillsWeb extends StatelessWidget {
  final String? text;
  const ContentPillsWeb(this.text,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Color(0xFF13151D),
        border: Border.all(
          width: 1.0,
          color: Color(0xFFD9D9D9), // Set border color to transparent
        ),
      ),
      child: Center(
          child: Text(
        text!,
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
