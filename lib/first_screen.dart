import 'package:exam/second_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _selectedIndex = 0;
  final List<Color> _backgroundColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColors[_selectedIndex],
      appBar: AppBar(
        title: Text('Bottom Navigation Bar Demo'),
      ),
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
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}