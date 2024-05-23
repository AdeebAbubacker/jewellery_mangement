import 'package:flutter/material.dart';
import 'package:jewellery_app/ui/screens/mobile/mobile_screen.dart';
import 'package:jewellery_app/ui/screens/tablet/tablet_screen.dart';
import 'package:jewellery_app/ui/screens/web/web_screen.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/BG.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 1200) {
              return WebScreen();
            } else if (constraints.maxWidth > 600) {
              return TabletScreen();
            } else {
              return MobileScreen();
            }
          },
        ),
      ),
    );
  }
}
