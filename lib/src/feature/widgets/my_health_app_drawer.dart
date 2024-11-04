import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyHealthAppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text('My Currency App'),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 28, 209, 73),
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
              context.go('/');
            },
          ),
          ListTile(
            title: Text('Currency Calculator'),
            onTap: () {
              Navigator.pop(context);
              context.go('/currency');
            },
          ),
          ListTile(
            title: Text('BMI Calculator'),
            onTap: () {
              Navigator.pop(context);
              context.go('/bmi');
            },
          ),
          // ListTile(
          //   title: Text('Age Calculator'),
          //   onTap: () {
          //     Navigator.pop(context);
          //     context.go('/age');
          //   },
          // ),
          // ListTile(
          //   title: Text('Zodiac Calculator'),
          //   onTap: () {
          //     Navigator.pop(context);
          //     context.go('/zodiac');
          //   },
          //),
        ],
      ),
    );
  }
}