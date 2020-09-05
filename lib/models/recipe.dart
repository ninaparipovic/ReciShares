import 'package:flutter/material.dart';

class Recipe {
  final String title;
  final String reference; //optional
  //TODO: make a difficulty model with easy moderate hard
  final DateTime prepTime;
  final DateTime cookTime;
  final DateTime totalTime;
  final String difficulty;
  final String ingredients;
  final String instructions;
  final DateTime date;

  Recipe(
      {@required this.title,
      @required this.ingredients,
      @required this.instructions,
      this.reference,
      this.prepTime,
      this.cookTime,
      this.totalTime,
      this.difficulty,
      this.date});
}
