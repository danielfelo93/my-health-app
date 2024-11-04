import 'package:flutter/material.dart';
import 'package:flutter_application/src/feature/widgets/my_health_app_drawer.dart';
import 'package:go_router/go_router.dart';

class ZodiacScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyHealthAppDrawer(),
      appBar: AppBar(
        title: Text('Zodiac'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Zodiac',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: (){
                context.go('/age');
              }, 
              child: Text('Go from Zodiac to Age'),
            ),
          ],
        ),
      ),
    );
  }
}