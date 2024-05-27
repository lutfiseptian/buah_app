import 'package:flutter/material.dart';
import '../widget/text/textApp.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://cdn0-production-images-kly.akamaized.net/72FuVdD7Dq45MwMiK-QE4hGS5Lo=/1200x900/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/2754932/original/005940800_1552970791-fotoHL_kucing.jpg'),
            ),
            Text(
              'Example Text',
              style: TextStyle(
                fontFamily: 'Sport', // Menggunakan nama famili font 'Sport'
                fontSize: 24,
                fontWeight: FontWeight.w300, // Berat font 300
              ),
            ),
            Text(
              'Example Text',
              style: TextStyle(
                fontFamily: 'Sport', // Menggunakan nama famili font 'Sport'
                fontSize: 24,
              ),
            ),
            SizedBox(height: 16),
            TextApp(text: 'John Doe', fontSize: 24, fontWeight: FontWeight.bold),
            SizedBox(height: 8),
            TextApp(text: 'john.doe@example.com', fontSize: 18),
            SizedBox(height: 16),
            TextApp(text: 'Bio', fontSize: 20, fontWeight: FontWeight.bold),
            SizedBox(height: 8),
            TextApp(text: 'Flutter developer and tech enthusiast.', fontSize: 16),
          ],
        ),
      ),
    );
  }
}
