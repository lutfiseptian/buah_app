import 'package:flutter/material.dart';

import '../text/textApp.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  CustomAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextApp( text: 'Waduh',),
      backgroundColor: Colors.blue,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      // Customize other properties of AppBar here
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
