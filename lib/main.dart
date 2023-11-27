import 'package:exam/first_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exam_12',
      theme: ThemeData(
        //Основной цвет
        primarySwatch: Colors.blue,
        //автоматически адаптирует плотность элементов интерфейса под платформу
        visualDensity: VisualDensity.adaptivePlatformDensity,
        //Текстовые темы
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.red),
          bodyMedium: TextStyle(color: Colors.green),
        ),
      ),
      //Указываем экран который откроется
      home: FirstScreen(),
    );
  }
}