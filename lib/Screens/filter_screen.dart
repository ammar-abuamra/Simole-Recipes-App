import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _glutenFree = false;
  bool _lactoseFree = false;
  bool _vegan = false;
  bool _vegetarian = false;

  Widget buildSwitchListTile(String title, String decription, bool currentvalue,
      Function updatevalue) {
    return SwitchListTile(
      title: Text(title),
      value: currentvalue,
      subtitle: Text(decription),
      onChanged: updatevalue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('your filters'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your filters',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              buildSwitchListTile(
                "Glutine free",
                "only incloud gluten meal",
                _glutenFree,
                (newvalue) {
                  setState(() {
                    _glutenFree = newvalue;
                  });
                },
              ),
              buildSwitchListTile(
                "lactoseFree",
                "only incloud lactoseFree meal",
                _lactoseFree,
                (newvalue) {
                  setState(() {
                    _lactoseFree = newvalue;
                  });
                },
              ),
              buildSwitchListTile(
                "vegan",
                "only inclod vegan meal",
                _vegan,
                (newvalue) {
                  setState(() {
                    _vegan = newvalue;
                  });
                },
              ),
              buildSwitchListTile(
                "vegetarian",
                "only include gluten meal",
                _vegetarian,
                (newvalue) {
                  setState(() {
                    _vegetarian = newvalue;
                  });
                },
              )
            ],
          ))
        ],
      ),
    );
  }
}
