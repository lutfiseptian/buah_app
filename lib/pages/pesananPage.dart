
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/text/textApp.dart';

class PesananPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Purchase History'),
      ),
      body: ListView(
        children: [
          PurchaseItem(
            fruitName: 'Apple',
            quantity: 2,
            totalPrice: 5.98,
          ),
          PurchaseItem(
            fruitName: 'Banana',
            quantity: 3,
            totalPrice: 3.99,
          ),
          PurchaseItem(
            fruitName: 'Orange',
            quantity: 1,
            totalPrice: 2.49,
          ),
          // Add more purchase items as needed
        ],
      ),
    );
  }
}

class PurchaseItem extends StatelessWidget {
  final String fruitName;
  final int quantity;
  final double totalPrice;

  PurchaseItem({
    required this.fruitName,
    required this.quantity,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(
          quantity.toString(),
        ),
      ),
      title: Text(fruitName),
      subtitle: Text('Total Price: \$${totalPrice.toStringAsFixed(2)}'),
      trailing: Icon(Icons.arrow_forward),
      onTap: () {
        // Add navigation to detail page or any action here
      },
    );
  }
}