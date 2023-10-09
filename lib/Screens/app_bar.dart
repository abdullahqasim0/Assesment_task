import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.location_on),
              padding: EdgeInsets.only(right: 330),// Location icon
              onPressed: () {
                // Add your location icon click action here
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications), // Notification icon
              onPressed: () {
                // Add your notification icon click action here
              },
            ),
          ],
        ),
      ],
    );
  }
}
