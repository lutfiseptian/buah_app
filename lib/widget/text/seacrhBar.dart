
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBarWidger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [ // Memberi jarak antara CircleAvatar dan TextField
        Expanded(
          child: Container(
            height: 40, // Sesuaikan tinggi TextField
            child: TextField(
              style: TextStyle(color: Colors.grey), // Warna teks
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10.0), // Sesuaikan padding dalam TextField
                hintText: 'Cari Apa Tinggal Ketik Disini!',
                hintStyle: TextStyle(color: Colors.grey), // Warna teks hint
                filled: true,
                fillColor: Colors.grey[50], // Warna latar belakang TextField
                prefixIcon: Icon(Icons.search, color: Colors.grey), // Warna ikon prefix
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none, // Hilangkan border default
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    color: Colors.grey, // Warna border saat enabled
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    color: Colors.grey, // Warna border saat fokus
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage('https://via.placeholder.com/150'),
        ),
      ],
    );
  }
}