import 'package:bottom_navigation_bar_1/screens/CartScreen.dart';
import 'package:bottom_navigation_bar_1/screens/FeedScreen.dart';
import 'package:bottom_navigation_bar_1/screens/HomeScreen.dart';
import 'package:bottom_navigation_bar_1/screens/ProfileScreen.dart';
import 'package:bottom_navigation_bar_1/screens/SearchScreen.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class Bottombar extends StatefulWidget {
  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {

   // List<Map<String, Object>> _screens;
  int currentIndex = 0;

  List _screens = [
    HomePage(),
    FeedPage(),
    SearchPage(),
    CartPage(),
    ProfilePage(),
  ];

  void _selectedPage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

/*
  @override
  void initState() {

    _screens = [
      {
        'page': HomePage(),
      },
      {
        'page': FeedPage(),
      },
      {
        'page': SearchPage(),
      },
      {
        'page': CartPage(),
      },
      {
        'page': ProfilePage(),
      }
    ];

    // TODO: implement initState
    super.initState();
  }
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        notchMargin: 2.0,
        clipBehavior: Clip.antiAlias,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          onTap: _selectedPage,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home".tr(),
              tooltip: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.rss_feed),
              label: "feed".tr(),
              tooltip: "Feed",
            ),
            BottomNavigationBarItem(
              activeIcon: null,
              icon: Icon(null),
              label: "",
              tooltip: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: "cart".tr(),
              tooltip: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "profile".tr(),
              tooltip: "profile".tr(),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: Colors.purple,
          tooltip: "Search",
          child: Icon(Icons.search),
          onPressed: () {
            setState(() {
              currentIndex = 2;
            });
          },
        ),
      ),
     body: _screens[currentIndex],
    );
  }
}

// shortcut key comment single line ctrl + /
// multiline comment ctrl + shift + /
