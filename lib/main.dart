import 'package:flutter/material.dart';
import './widgets/new_recipe.dart';
import './widgets/recipe_list.dart';
import './widgets/user_recipes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ReciShares',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Center(
            child: new Text('My Recipes', textAlign: TextAlign.center),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: double.infinity,
                // child is user recipes
                child: Card(
                  child: Container(
                    child: Text('dummie'),
                  ),
                ),
              ),
              UserRecipes(),
            ],
          ),
        ));
  }
}
