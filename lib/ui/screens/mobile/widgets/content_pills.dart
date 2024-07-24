// import 'package:flutter/material.dart';

// class ContentPillsMob extends StatelessWidget {
//   final String text;
//   const ContentPillsMob(this.text, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 110,
//       height: 40,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(7),
//         color: const Color(0xFF13151D),
//         border: Border.all(
//           width: 1.0,
//           color: const Color(0xFFD9D9D9),
//         ),
//       ),
//       child: Center(
//           child: Text(
//         textAlign: TextAlign.center,
//         text,
//         style: const TextStyle(color: Colors.white, fontSize: 9),
//       )),
//     );
//   }
// }

// // import 'package:flutter/material.dart';

// // class ContentPillsTab extends StatelessWidget {
// //   final String text;
// //   const ContentPillsTab(this.text, {super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       width: 180,
// //       height: 40,
// //       decoration: BoxDecoration(
// //         borderRadius: BorderRadius.circular(7),
// //         color: const Color(0xFF13151D),
// //         border: Border.all(
// //           width: 1.0,
// //           color: const Color(0xFFD9D9D9),
// //         ),
// //       ),
// //       child: Center(
// //           child: Text(
// //         text,
// //         textAlign: TextAlign.center,
// //         style: const TextStyle(color: Colors.white),
// //       )),
// //     );
// //   }
// // }

import 'package:flutter/material.dart';

class ContentPillsMob extends StatelessWidget {
  final String? text;
  const ContentPillsMob(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: const TextStyle(color: Colors.white),
      ),
      maxLines: 1,
      ellipsis: '...',
      textDirection: Directionality.of(context),
    )..layout(minWidth: 0, maxWidth: double.infinity);

    final textWidth = textPainter.size.width;
    return Container(
      width: textWidth + 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: const Color(0xFF13151D),
        border: Border.all(
          width: 1.0,
          color: const Color(0xFFD9D9D9),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Text(
          textAlign: TextAlign.center,
          text!,
          style: const TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
