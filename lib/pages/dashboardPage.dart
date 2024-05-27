import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_ui/pages/pesananPage.dart';
import 'package:project_ui/pages/profilePage.dart';
import 'package:project_ui/pages/berandaPage.dart';
import 'package:project_ui/pages/promoPage.dart';
import 'package:project_ui/widget/text/textApp.dart';
import 'package:provider/provider.dart';
import '../controller/navbar/navbar.dart';

class DashboardScreen extends StatelessWidget {
  static List<Widget> _widgetOptions = <Widget>[
    BerandaPage(),
    PromoPage(),
    PesananPage()
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavigationController(),
      child: Scaffold(
        body: Consumer<NavigationController>(
          builder: (context, controller, child) {
            return Center(
              child: _widgetOptions.elementAt(controller.selectedIndex),
            );
          },
        ),
        bottomNavigationBar: Consumer<NavigationController>(
          builder: (context, controller, child) {
            return BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.local_offer),
                  label: 'Promo',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.history),
                  label: 'Pesanan',
                ),
              ],
              currentIndex: controller.selectedIndex,
              selectedItemColor: Colors.lightGreen,
              onTap: (index) {
                print('Selected Index: $index'); // Debug statement
                controller.onItemTapped(index);
              },
            );
          },
        ),
      ),
    );
  }
}
