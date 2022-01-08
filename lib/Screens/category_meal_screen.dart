import 'package:flutter/material.dart';
import 'package:resturanapp/Widget/meal_iteam.dart';
import '../1.2 dummy_data.dart';

class CategoryMealScreen extends StatefulWidget {
  static const routeName = 'categoryMeals';

  @override
  _CategoryMealScreenState createState() => _CategoryMealScreenState();
}

class _CategoryMealScreenState extends State<CategoryMealScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryid = routeArg['id'];
    final categroytitle = routeArg['title'];
    final categoryMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryid);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categroytitle),
      ),
      body: ListView.builder(
          itemCount: categoryMeal.length,
          itemBuilder: (ctx, index) {
            return mealiteam(
              id: categoryMeal[index].id,
              imageUrl: categoryMeal[index].imageUrl,
              title: categoryMeal[index].title,
              complexity: categoryMeal[index].complexity,
              affordability: categoryMeal[index].affordability,
              duration: categoryMeal[index].duration,
            );
          }),
    );
  }
}
