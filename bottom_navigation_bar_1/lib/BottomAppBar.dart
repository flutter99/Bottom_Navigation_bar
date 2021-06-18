import 'package:bottom_navigation_bar_1/screens/CartScreen.dart';
import 'package:bottom_navigation_bar_1/screens/FeedScreen.dart';
import 'package:bottom_navigation_bar_1/screens/HomeScreen.dart';
import 'package:bottom_navigation_bar_1/screens/ProfileScreen.dart';
import 'package:bottom_navigation_bar_1/screens/SearchScreen.dart';
import 'package:flutter/material.dart';

class Bottombar extends StatefulWidget {
  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {

  int currentIndex = 0;

  List _screens = [
    HomePage(),
    FeedPage(),
    SearchPage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: Colors.purple,
            //onTap: _screens[currentIndex],
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.feed),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text(""),
              ),
            ],
        ),
      ),
      body: _screens[currentIndex],
    );
  }
}
