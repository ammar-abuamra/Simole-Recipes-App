import 'package:flutter/material.dart';
import 'package:resturanapp/1.2%20dummy_data.dart';
import 'package:resturanapp/Widget/category_i.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("Category"),),
      body: GridView(
        padding: EdgeInsets.all(10),
        children: DUMMY_CATEGORIES
            .map(
              (catData) => categoryiteam(
                  catData.id, catData.title, catData.color, catData.imageUrl),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 3 / 2),
      ),
    );
  }
}
