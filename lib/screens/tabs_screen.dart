import 'package:flutter/material.dart';

import '../widgets/drawer_widget.dart';
import '../models/meal.dart';

class TabsScreen extends StatefulWidget {
  // final List<Meal> favoritedMeal;

  TabsScreen();

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String, Object>> _pages;

  @override
  initState() {
    _pages = [
      {
        'page': 'CategoriesScreen',
        'title': 'Categories',
      },
      {
        'page': 'FavoritesScreen',
        'title': 'Your Favorites',
      },
    ];
    super.initState();
  }

  int _selectedPage = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPage]['title'].toString()),
      ),
      drawer: MainDrawer(),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectedPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          )
        ],
      ),
    );
  }
}
