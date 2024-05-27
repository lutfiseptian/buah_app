import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fruit {
  final String name;
  final String image;
  final double price;
  final bool isPromo; // Atribut untuk menentukan apakah buah tersebut promo atau tidak

  Fruit({
    required this.name,
    required this.image,
    required this.price,
    this.isPromo = false, // Default value untuk isPromo adalah false
  });
}

class FruitListItem extends StatelessWidget {
  final Fruit fruit;
  FruitListItem({required this.fruit});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(fruit.image),
        ),
        title: Text(fruit.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('\$${fruit.price.toStringAsFixed(2)}'),
            if (fruit.isPromo) // Menampilkan status promo jika buah tersebut promo
              Text(
                'Promo!',
                style: TextStyle(color: Colors.red),
              ),
          ],
        ),
      ),
    );
  }
}

class FruitList extends StatelessWidget {
  final List<Fruit> fruits = [
    Fruit(name: 'Apple', image: 'https://www.shutterstock.com/image-photo/red-apple-isolated-on-white-600nw-1727544364.jpg', price: 2.99),
    Fruit(name: 'Banana', image: 'https://w7.pngwing.com/pngs/286/90/png-transparent-organic-food-lady-finger-banana-banana-chip-banana-natural-foods-food-orange.png', price: 1.99, isPromo: true),
    Fruit(name: 'Orange', image: 'https://img.freepik.com/free-photo/orange-white-white_144627-16571.jpg', price: 3.49),
    Fruit(name: 'Grapes', image: 'https://e7.pngegg.com/pngimages/153/513/png-clipart-wine-common-grape-vine-fruit-wine-natural-foods-frutti-di-bosco.png', price: 4.99, isPromo: true),
    Fruit(name: 'Watermelon', image: 'https://w7.pngwing.com/pngs/736/933/png-transparent-watermelon-watermelon-food-melon-desktop-wallpaper.png', price: 5.99),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: fruits.length,
      itemBuilder: (BuildContext context, int index) {
        return FruitListItem(fruit: fruits[index]);
      },
    );
  }
}