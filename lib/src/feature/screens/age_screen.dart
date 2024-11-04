import 'package:flutter/material.dart';
import 'package:flutter_application/src/feature/widgets/my_health_app_drawer.dart';
import 'package:go_router/go_router.dart';

class AgeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyHealthAppDrawer(),
      appBar: AppBar(
        title: Text('Age Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Age Screen',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: (){
                context.go('/bmi');
              }, 
              child: Text('Go from Age to BMI')
              )
          ],
        ),
      ),
    );
  }
}