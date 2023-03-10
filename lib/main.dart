import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:recipes/recipe_detail.dart';

import 'recipe.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Recipe Calculator',
      theme: theme.copyWith(
          colorScheme: theme.colorScheme
              .copyWith(primary: Colors.grey, secondary: Colors.black)),
      home: const MyHomePage(title: 'Resepku'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: Recipe.samples.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RecipeDetail(recipe: Recipe.samples[index]);
                }));
              },
              child: buildCardRecipe(Recipe.samples[index]));
        },
      ),
    );
  }

  Widget buildCardRecipe(Recipe recipe) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Image(
            image: AssetImage(recipe.imageUrl),
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 14.0,
          ),
          Text(
            recipe.label,
            style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino'),
          )
        ]),
      ),
    );
  }
}
