import 'package:flutter/material.dart';
import '../Screens/category_meal_screen.dart';

class categoryiteam extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  final String imagUrl;

  categoryiteam(this.id, this.title, this.color, this.imagUrl);

  void selectcategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoryMealScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
        'imagUrl': imagUrl,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectcategory(context),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        decoration: BoxDecoration(
          color: color,
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
