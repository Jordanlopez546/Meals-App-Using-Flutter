import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavouriteScreen extends StatelessWidget {
  final List<Meal> _favouritedMeals;

  const FavouriteScreen(this._favouritedMeals, {super.key});

  @override
  Widget build(BuildContext context) {
    if (_favouritedMeals.isEmpty) {
      return Container(
        alignment: Alignment.center,
        child: const Text('You have no favourites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: _favouritedMeals[index].id,
            title: _favouritedMeals[index].title,
            affordability: _favouritedMeals[index].affordability,
            complexity: _favouritedMeals[index].complexity,
            duration: _favouritedMeals[index].duration,
            imageUrl: _favouritedMeals[index].imageUrl,
          );
        },
        itemCount: _favouritedMeals.length,
      );
    }
  }
}
