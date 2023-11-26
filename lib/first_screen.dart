import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget { 

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
        body: ListView.builder( 
          itemCount: items.length, 
          itemBuilder: (BuildContext context, int index) { 
            return ListTile( 
              title: Text(items[index]), 
            ); 
          }, 
        ), 
      ), 
    ); 
  } 
} 