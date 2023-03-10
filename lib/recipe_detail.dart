import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatelessWidget {
  final Recipe recipe;
  const RecipeDetail({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.label),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image(
              image: AssetImage(recipe.imageUrl),
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 4.0,
            ),
            Text(
              recipe.label,
              style: const TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(6.0),
                  itemCount: recipe.ingredients.length,
                  itemBuilder: (BuildContext context, index) {
                    final ingredient = recipe.ingredients[index];
                    return Text(
                        '${ingredient.quantity} ${ingredient.measure} ${ingredient.name}');
                  }),
            )
          ],
        ),
      ),
    );
  }
}
