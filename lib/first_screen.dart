import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      //Вверхнее поле экрана
      appBar: AppBar(
        title: Text('Простой Калькулятор'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(10),
              child: const Text(
                "Ответ", 
                style: TextStyle(fontSize: 48.0)
              )
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                buildButton("1"),
                buildButton("2"),
                buildButton("3"),
                buildButton("/")
              ]
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                buildButton("4"),
                buildButton("5"),
                buildButton("6"),
                buildButton("*")
              ]
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                buildButton("7"),
                buildButton("8"),
                buildButton("9"),
                buildButton("-")
              ]
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                buildButton("."),
                buildButton("0"),
                buildButton("C"),
                buildButton("+")
              ]
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                buildButton("=")
              ] 
            ),
          )
        ]
      )
    );

    
  }

  //Выносим код в отдельный виджет который будем использовать выще, тк данный виджет повторяется
  Widget buildButton(String buttonText) {
    return Expanded(
      
      child: Container(
        height: double.maxFinite,
        margin: EdgeInsets.all(10),
        child: ElevatedButton(
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () => (),
        ),
      ),
    );
  }
}