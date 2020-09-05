import 'package:flutter/material.dart';
import './recipe_list.dart';
import '../models/recipe.dart';
import 'new_recipe.dart';

class UserRecipes extends StatefulWidget {
  @override
  _UserRecipesState createState() => _UserRecipesState();
}

class _UserRecipesState extends State<UserRecipes> {
  final List<Recipe> _userRecipes = [
    Recipe(
      title: 'test',
      ingredients: 'peanut butter',
      instructions: '1. eat',
      date: DateTime.now(),
    )
  ];

  void _addNewRecipe(
      String txTitle, String txIngredients, String txInstructions) {
    final newRx = Recipe(
      title: txTitle,
      ingredients: txIngredients,
      instructions: txInstructions,
      date: DateTime.now(),
    );

    setState(() {
      _userRecipes.add(newRx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //TODO: update these
        NewRecipe(_addNewRecipe),
        RecipeList(_userRecipes),
      ],
    );
  }
}
