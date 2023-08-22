import 'package:core_techies/screens/Orders_page.dart';
import 'package:core_techies/screens/Cart_Page.dart';
import 'package:core_techies/screens/Catagory_page.dart';
import 'package:core_techies/screens/Home_Page.dart';
import 'package:core_techies/screens/User_Page.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_iconly/flutter_iconly.dart';

class ButtomBarScreen extends StatefulWidget {
  const ButtomBarScreen({super.key});

  @override
  State<ButtomBarScreen> createState() => _ButtomBarScreenState();
}

class _ButtomBarScreenState extends State<ButtomBarScreen> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _pages = [
    {'page': const HomeScreen(), 'title': 'Home'},
    {'page': const CategoriesScreen(), 'title': 'Category'},
    {'page': const CartScreen(), 'title': 'Cart'},
    {'page': const OrdersScreen(), 'title': 'Cart'},
    {'page': const UserScreen(), 'title': 'You'},
  ];

  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color.fromARGB(255, 239, 243, 245),
          showSelectedLabels: false,
          backgroundColor: const Color(0xFF003853),
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _selectedPage,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                  _selectedIndex == 0 ? IconlyBold.home : IconlyLight.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 1
                  ? IconlyBold.category
                  : IconlyLight.category),
              label: "Categories",
            ),
            BottomNavigationBarItem(
              icon:
                  Icon(_selectedIndex == 2 ? IconlyBold.buy : IconlyLight.buy),
              label: "Buy",
            ),
            BottomNavigationBarItem(
              icon:
                  Icon(_selectedIndex == 3 ? IconlyBold.home : IconlyLight.bag),
              label: "Orders",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  _selectedIndex == 4 ? IconlyBold.home : IconlyLight.user2),
              label: "User",
            ),
          ]),
    );
  }
}
