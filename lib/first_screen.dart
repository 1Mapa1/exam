import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Привет'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Как дела?',
              //Выставляем темы которые сделали в main
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              'Не фантан но брызги есть',
              //Выставляем темы которые сделали в main
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}