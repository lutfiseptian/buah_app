import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/balance/balance.dart';
import '../widget/banner/banner.dart';
import '../widget/menu/buah.dart';
import '../widget/menu/menu.dart';
import '../widget/text/seacrhBar.dart';
class BerandaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            pinned: true,
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                padding: EdgeInsets.all(16.0),
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: SearchBarWidger(),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: BannerCarousel(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 10.0),
          ),
          SliverToBoxAdapter(
            child: BalanceWidget(
              balance: 1234.56,
              onPay: () {
                print('Pay button pressed');
              },
              onTopUp: () {
                print('Top Up button pressed');
              },
              onOther: () {
                print('Other button pressed');
              },
            ),
          ),
          SliverToBoxAdapter(
            child: MenuGrid(),
          ),
          SliverToBoxAdapter(
            child: FruitList(), // Memanggil FruitList di sini
          ),
        ],
      ),
    );
  }
}




