import 'package:flutter/material.dart';

class ContentPillsMob extends StatelessWidget {
  final String text;
  const ContentPillsMob(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: const Color(0xFF13151D),
        border: Border.all(
          width: 1.0,
          color: const Color(0xFFD9D9D9),
        ),
      ),
      child: Center(
          child: Text(
        textAlign: TextAlign.center,
        text,
        style: const TextStyle(color: Colors.white, fontSize: 9),
      )),
    );
  }
}
