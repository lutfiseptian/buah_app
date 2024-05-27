
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BannerCarousel extends StatelessWidget {
  final List<String> imgList = [
    'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgPw8pLQV4gAyTFU_HfLZonjA8PD3NB9bpdZYg81YaMoWGZ5YutJ2ZzpMFku8VW64ZNLfwcuMudWQCS-RHH5Wiz4240ZkmabiI1AT6JhOStT1oup0yImeCKagTEUJmA5fzo-b1T7t4k7uiZ/s1081/Farmers-Market-Promo-Buah-%2526-Sayur-mulai-dari-Rp-17.550-Bisa-Isi-SEPUASNYA%2521-3.jpg',
    'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//102/MTA-93161865/oem_paket-promo-buah-segar_full01.jpg',
    'https://www.prestisa.com/wp-content/uploads/2021/06/BANNER-PARSEL-BUAH-1280-x-720.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0, // Sesuaikan tinggi carousel
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 12,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 1,
      ),
      items: imgList.map((item) => Container(
        child: Center(
          child: Image.network(item, fit: BoxFit.fill, width: 4000),
        ),
      )).toList(),
    );
  }
}