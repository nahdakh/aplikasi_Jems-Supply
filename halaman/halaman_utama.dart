import 'package:flutter/material.dart';
import 'package:VendorConnect/komponen/bottom_nav_bar.dart';

import 'halaman_keranjang.dart';
import 'halaman_menu.dart';
import 'halaman_profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // navigate bottom bar
  int _selectedIndex = 0;
  void navigateBottomBar(int newIndex) {
    setState(() {
      _selectedIndex = newIndex;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    // halaman menu
    const HalMenu(),

    // halaman keranjang
    const HalKeranjang(),

    // halaman Keranjang
     ProfilePage()


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 129, 138, 255),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}