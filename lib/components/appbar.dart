import 'package:flutter/material.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Blog"),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.person),
          color: Colors.white,
          onPressed: () {},
        )
      ],
    );
  }
}
