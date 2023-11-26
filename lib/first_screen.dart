import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{

  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: Text('My App'), 
      ), 
      body: Center( 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [ 
            ElevatedButton( 
              child: Text('Показать диалоговое окно'), 
              onPressed: () { 
                showDialog( 
                  context: context, 
                  builder: (BuildContext context) { 
                    return AlertDialog( 
                      title: Text('Диалоговое окно'), 
                      content: Text('Это диалоговое окно.'), 
                      actions: [ 
                        TextButton( 
                          child: Text('ОК'), 
                          onPressed: () { 
                            Navigator.of(context).pop(); 
                          }, 
                        ), 
                      ], 
                    ); 
                  }, 
                ); 
              }, 
            ), 
            ElevatedButton( 
              child: Text('Показать уведомление (5 секунд)'), 
              onPressed: () { 
                final snackBar = SnackBar( 
                  content: Text('Это всплывающее уведомление.'), 
                  duration: Duration(seconds: 5), 
                ); 
                ScaffoldMessenger.of(context).showSnackBar(snackBar); 
              }, 
            ), 
            ElevatedButton( 
              child: Text('Показать уведомление (10 секунд)'), 
              onPressed: () { 
                final snackBar = SnackBar( 
                  content: Text('Это всплывающее уведомление.'), 
                  duration: Duration(seconds: 10), 
                ); 
                ScaffoldMessenger.of(context).showSnackBar(snackBar); 
              }, 
            ), 
          ], 
        ), 
      ), 
    ); 
  } 
} 