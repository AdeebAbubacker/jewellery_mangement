

import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:
          Colors.transparent, 
      elevation: 0, 
      leading: IconButton(
      
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        onPressed: () {
       
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
