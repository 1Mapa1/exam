import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget { 

  @override 

  Widget build(BuildContext context) { 

    return Scaffold( 
      //Данный атрибут нужен, чтобы элементы не смещались при выдвигание клавиатуры
      resizeToAvoidBottomInset: false,
      //Вверхнее поле экрана
      appBar: AppBar( 
        title: const Text('Авторизация'), 
      ), 
      body: Padding( 
        padding: const EdgeInsets.all(16.0), 
        child: Column( 
          //Данный виджет нужен, чтобы элементы были по центру по вертикале
          mainAxisAlignment: MainAxisAlignment.center, 
          children: <Widget>[ 
            //Поле для ввода
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