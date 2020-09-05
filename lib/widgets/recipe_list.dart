import 'package:flutter/material.dart';
import '../models/recipe.dart';
import 'package:intl/intl.dart';

class RecipeList extends StatelessWidget {
  List<Recipe> recipes;

  RecipeList(this.recipes);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.amber,
                      width: 2,
                    ),
                  ),
                  child: Text(recipes[index].title),
                ),
                Column(
                  children: [
                    Text(DateFormat.EEEE().format(recipes[index].date))
                  ],
                )
              ],
            ),
          );
        },
        itemCount: recipes.length,
      ),
    );
  }
}
