
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuGridItem extends StatelessWidget {
  final String title;
  final String iconUrl; // URL gambar ikon
  final VoidCallback onPressed;

  MenuGridItem({
    required this.title,
    required this.iconUrl,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
            iconUrl,
            width: 30, // Ukuran gambar ikon
            height: 30,// Warna gambar ikon
          ),
          SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}

class MenuGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4, // Empat kolom
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(), // Untuk mencegah pengguliran
      children: <Widget>[
        MenuGridItem(
          title: 'Belanja',
          iconUrl: 'https://cdn.icon-icons.com/icons2/3150/PNG/512/shopping_basket_food_grocieries_full_icon_192685.png', // URL gambar ikon
          onPressed: () {
            print('Belanja pressed');
          },
        ),
        MenuGridItem(
          title: 'Borongan',
          iconUrl: 'https://cdn.icon-icons.com/icons2/3150/PNG/512/delivery_truck_fast_icon_192657.png',
          onPressed: () {
            print('Borongan pressed');
          },
        ),
        MenuGridItem(
          title: 'Di kirim kerumah',
          iconUrl: 'https://cdn.icon-icons.com/icons2/3150/PNG/512/box_parcel_icon_192643.png',
          onPressed: () {
            print('kerumah pressed');
          },
        ),
        MenuGridItem(
          title: 'Favorit',
          iconUrl: 'https://cdn.icon-icons.com/icons2/3150/PNG/512/heart_smiling_icon_192666.png',
          onPressed: () {
            print('Favorit pressed');
          },
        ),
      ],
    );
  }
}