import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';

import '../widgets/drawer_widget.dart';
import '../models/meal.dart';

class TabsScreen extends StatefulWidget {
  // final List<Meal> favoritedMeal;

  TabsScreen();

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String, Widget>> _pages;

  @override
  initState() {
    _pages = [
      {
        'page': const CategoriesScreen(),
        'title': Text('Categories'),
      },
      {
        'page': Text('FavoritesScreen'),
        'title': Text('Your Favorites'),
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
      body: _pages[_selectedPage]['page'],
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
