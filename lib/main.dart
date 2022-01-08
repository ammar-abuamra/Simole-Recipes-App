import 'package:flutter/material.dart';
import './Screens/tabs_screen.dart';
import './Screens/meal_detal_screen.dart';

import 'Screens/category_meal_screen.dart';
import './Screens/filter_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(color: Color.fromRGBO(20, 50, 50, 1)),
            bodyText2: TextStyle(color: Color.fromRGBO(20, 50, 50, 1)),
            subtitle1: TextStyle(
              fontSize: 25,
              fontFamily: "ReemKufi",
            )),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => TabsScreen(),
        CategoryMealScreen.routeName: (context) => CategoryMealScreen(),
        mealdatascreen.routeName: (context) => mealdatascreen(),
        FilterScreen.routeName: (context) => FilterScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meals app"),
        actions: [ElevatedButton(onPressed: null, child: null)],
      ),
      body: null,
    );
  }
}
