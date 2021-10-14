import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildOption(String text, IconData iconData, Function tapHandler) {
    return ListTile(
      leading: Icon(
        iconData,
        size: 26,
      ),
      title: Text(
        text,
        style: const TextStyle(
            fontFamily: 'OpenSans', fontSize: 24, fontWeight: FontWeight.bold),
      ),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: <Widget>[
        Container(
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          color: Theme.of(context).colorScheme.secondary,
          child: Text(
            "Cooking Up!",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        buildOption(
          'Meals',
          Icons.restaurant,
          () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
        buildOption(
          'Filters',
          Icons.settings,
          () {},
        ),
      ],
    ));
  }
}
