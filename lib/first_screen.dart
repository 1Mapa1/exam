import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is a sample text',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              'Another sample text',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}