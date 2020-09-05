import 'package:flutter/material.dart';
import './user_recipes.dart';

class NewRecipe extends StatelessWidget {
  final titleController = TextEditingController();
  final ingredientController = TextEditingController();
  final instructionController = TextEditingController();
  final Function addRx;

  NewRecipe(this.addRx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                fillColor: Colors.amberAccent,
                labelText: 'Title',
              ),
            ),
            TextField(
              controller: ingredientController,
              decoration: InputDecoration(
                fillColor: Colors.amberAccent,
                labelText: 'ingredients',
              ),
            ),
            TextField(
              controller: instructionController,
              decoration: InputDecoration(
                fillColor: Colors.amberAccent,
                labelText: 'instructions',
              ),
            ),
            FlatButton(
              onPressed: () {
                addRx(titleController.text, ingredientController.text,
                    instructionController.text);
              },
              child: Text('add recipe'),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
