import 'package:flutter/material.dart';


//Создаем StatefulWidget, чтобы экран после нажатию на кнопку обновлялся 
class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  //Указываем список цветов и индентифекатор выбора элементов
  int _selectedIndex = 0;
  final List<Color> _backgroundColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Указываем цвет в зависимости от выбраного элемента
      backgroundColor: _backgroundColors[_selectedIndex],
      appBar: AppBar(
        title: Text('Bottom Navigation Bar Demo'),
      ),
      //Создаем что надо и иконки
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_one),
            label: 'Red',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two),
            label: 'Green',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_3),
            label: 'Blue',
          ),
        ],
        currentIndex: _selectedIndex,
        //Функция которая сработает при нажатие
        onTap: _onItemTapped,
      ),
    );
  }
  //Тут меняется индефикатор
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}