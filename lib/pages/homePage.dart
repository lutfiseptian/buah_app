import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/header/header.dart';
import 'dashboardPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DashboardScreen(),
        ],
      ),
    );
  }
}
