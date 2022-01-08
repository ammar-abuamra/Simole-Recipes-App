import 'package:flutter/material.dart';
import 'package:resturanapp/1.2%20dummy_data.dart';

class mealdatascreen extends StatelessWidget {
  static const routeName = 'meal_detail';

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealid = ModalRoute.of(context).settings.arguments as String;
    final mealId = DUMMY_MEALS.firstWhere((meal) => meal.id == mealid);
    return Scaffold(
      appBar: AppBar(
        title: Text(mealId.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Image.network(
                mealId.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle(context, 'ingradent'),
            buildContainer(
              ListView.builder(
                itemCount: mealId.ingredients.length,
                itemBuilder: (ctx, Index) => Card(
                  color: Theme.of(context).accentColor,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(
                      mealId.ingredients[Index],
                    ),
                  ),
                ),
              ),
            ),
            buildSectionTitle(context, 'steps'),
            buildContainer(
              ListView.builder(
                itemCount: mealId.steps.length,
                itemBuilder: (ctx, Index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('#${Index + 1}'),
                      ),
                      title: Text(mealId.steps[Index]),
                    ),
                    Divider(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
