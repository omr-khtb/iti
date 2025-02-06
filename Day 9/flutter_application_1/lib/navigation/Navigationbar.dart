import 'package:day_7/screens/categories.dart';
import 'package:day_7/screens/home.dart';
import 'package:day_7/screens/product_list.dart';
import 'package:day_7/screens/settings.dart';
import 'package:flutter/material.dart';

class NavigationBardemo extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBardemo> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    ProductListPage(),
    CategoriesPage(),
    SettingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context); // Close the drawer after selection
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Bar'),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Navigation Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => _onItemTapped(0),
            ),
            ListTile(
              leading: Icon(Icons.shopify_outlined),
              title: Text('Products'),
              onTap: () => _onItemTapped(1),
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text('Categories'),
              onTap: () => _onItemTapped(2),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () => _onItemTapped(3),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
