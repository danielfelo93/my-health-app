import 'package:flutter/material.dart';
import 'package:flutter_application/src/feature/widgets/my_health_app_drawer.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyHealthAppDrawer(),
      appBar: AppBar(
        title: Text('HomeScreen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/currency');
          }, child: Text('Go from Home to Currency'),
        ),
      ),
    );
  }
}