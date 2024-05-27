
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/text/textApp.dart';

class Fruit {
  final String name;
  final String image;
  final double price;
  final String description;
  final Map<String, double> vitamins;

  Fruit({
    required this.name,
    required this.image,
    required this.price,
    required this.description,
    required this.vitamins,
  });
}


class PromoListItem extends StatelessWidget {
  final Fruit fruit;

  PromoListItem({required this.fruit});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Image.network(
              fruit.image,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      fruit.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      fruit.description,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '\$${fruit.price.toStringAsFixed(2)}',
                      style: TextStyle(color: Colors.green, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class PromoList extends StatelessWidget {
  final List<Fruit> promoFruits;

  PromoList({required this.promoFruits});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: promoFruits.length,
      itemBuilder: (BuildContext context, int index) {
        return PromoListItem(fruit: promoFruits[index]);
      },
    );
  }
}
class PromoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Fruit> promoFruits = [
      Fruit(
        name: 'Apple',
        image: 'https://www.shutterstock.com/image-photo/red-apple-isolated-on-white-600nw-1727544364.jpg',
        price: 2.99,
        description: 'Fresh and delicious apples from the orchard.',
        vitamins: {'Vitamin C': 12.5, 'Vitamin A': 6.8},
      ),
      Fruit(
        name: 'Banana',
        image: 'https://w7.pngwing.com/pngs/286/90/png-transparent-organic-food-lady-finger-banana-banana-chip-banana-natural-foods-food-orange.png',
        price: 1.99,
        description: 'Sweet and ripe bananas, perfect for snacking.',
        vitamins: {'Vitamin B6': 5.4, 'Vitamin C': 7.2},
      ),Fruit(
        name: 'Orange',
        image: 'https://img.freepik.com/free-photo/orange-white-white_144627-16571.jpg',
        price: 1.99,
        description: 'Sweet and ripe Orange, perfect for Vitamin C.',
        vitamins: {'Vitamin B6': 5.4, 'Vitamin C': 7.2},
      ),
      // Add more promo fruits as needed
    ];

    return Scaffold(
      appBar: AppBar(title: Text('Promo Page')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Promo Fruits',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            PromoList(promoFruits: promoFruits),
          ],
        ),
      ),
    );
  }
}

