import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> _favoritedMeals;
  FavoritesScreen(this._favoritedMeals);
  @override
  Widget build(BuildContext context) {
    if (_favoritedMeals.isEmpty) {
      return Center(
        child: Text('You have no favorites yet!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: _favoritedMeals[index].id,
            affordability: _favoritedMeals[index].affordability,
            complexity: _favoritedMeals[index].complexity,
            duration: _favoritedMeals[index].duration,
            imageUrl: _favoritedMeals[index].imageUrl,
            title: _favoritedMeals[index].title,
          );
        },
        itemCount: _favoritedMeals.length,
      );
    }
  }
}
