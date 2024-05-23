

import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:
          Colors.transparent, // set the app bar background color to transparent
      elevation: 0, // remove shadow
      leading: IconButton(
        // add leading hamburger menu icon
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        onPressed: () {
          // Handle menu button tap
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
