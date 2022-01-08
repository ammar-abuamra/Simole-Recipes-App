import 'package:flutter/material.dart';
import '../Screens/filter_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function Taphandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 24,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, fontFamily: "ReemKufi"),
      ),
      onTap: Taphandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            color: Theme.of(context).accentColor,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              'COOKING UP !',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          buildListTile('Meals', Icons.restaurant, () {
            Navigator.of(context).pushNamed('/');
          }),
          buildListTile('Filters', Icons.settings, () {
            Navigator.of(context).pushNamed(FilterScreen.routeName);
          }),
        ],
      ),
    );
  }
}
