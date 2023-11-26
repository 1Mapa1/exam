import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget { 

  @override 

  Widget build(BuildContext context) { 

    return Scaffold( 
      resizeToAvoidBottomInset: false,
      appBar: AppBar( 
        title: const Text('Авторизация'), 
      ), 
      body: Padding( 
        padding: const EdgeInsets.all(16.0), 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center, 
          children: <Widget>[ 
            const TextField( 
              decoration: InputDecoration( 
                labelText: 'Имя пользователя', 
              ), 
            ), 
            const SizedBox(height: 10.0), 
            const TextField( 
              obscureText: true, 
              decoration: InputDecoration( 
                labelText: 'Пароль', 
              ), 
            ), 
            const SizedBox(height: 20.0), 
            ElevatedButton( 
              child: const Text('Войти'), 
              onPressed: () { 
                // Действия при нажатии на кнопку "Войти" 
              }, 
            ), 
          ], 
        ), 
      ), 
    ); 
  } 
} 