import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget { 
  //Список элеметов
  final List<String> items = [ 
    'Item 1', 
    'Item 2', 
    'Item 3', 
    'Item 4', 
    'Item 5', 
    'Item 6', 
    'Item 7', 
    'Item 8', 
    'Item 9', 
    'Item 10', 
  ]; 

  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      title: 'List View Example', 
      home: Scaffold( 
        appBar: AppBar( 
          title: Text('List View Example'), 
        ), 
        //Функция которая автоматически из списка сделает элементы
        body: ListView.builder( 
          itemCount: items.length, 
          itemBuilder: (BuildContext context, int index) { 
            //То что указываем тут то и выводится
            return ListTile( 
              title: Text(items[index]), 
            ); 
          }, 
        ), 
      ), 
    ); 
  } 
} 