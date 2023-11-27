import 'package:exam/second_screen.dart';
import 'package:flutter/material.dart';
//Создаем класс
class FirstScreen extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    //Создаем экран
    return Scaffold(
      //Вверхнее поле экрана
      appBar: AppBar(
        title: const Text("Экран 1"),
      ),
      body: Center(
        child: Column(
          //Чтобы элементы были по центру экрана (по вертикале)
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blueAccent)
              ),
              onPressed: () {
                //Функция для перехода на другой экран
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              child: const Text('Нажми на меня'),
            ),
          ],
        ),
      )
    );
  }
}