import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BalanceWidget extends StatelessWidget {
  final double balance;
  final VoidCallback onPay;
  final VoidCallback onTopUp;
  final VoidCallback onOther;

  BalanceWidget({
    required this.balance,
    required this.onPay,
    required this.onTopUp,
    required this.onOther,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.wallet , color: Colors.white,),
                  Text(
                    '\$${balance.toStringAsFixed(1)}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButtonWithLabel(
                    icon: Icons.payment,
                    label: 'Pay',
                    onPressed: onPay,
                  ),
                  IconButtonWithLabel(
                    icon: Icons.add_circle,
                    label: 'Top Up',
                    onPressed: onTopUp,
                  ),
                  IconButtonWithLabel(
                    icon: Icons.more_horiz,
                    label: 'Other',
                    onPressed: onOther,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class IconButtonWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  IconButtonWithLabel({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon, color: Colors.white),
          onPressed: onPressed,
        ),
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}