import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Личный кабинет'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Аватар пользователя
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/avatar.png') ,
            ),
            SizedBox(height: 16),
            // Имя пользователя
            Text(
              'Рюрик',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            // Электронная почта
            Text(
              'email@example.com',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            // Информация о пользователе
            Text(
              'Дата рождения: 01.01.1990\nГород: Москва\nПол: Женский',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            // Кнопка для редактирования профиля
            ElevatedButton(
              onPressed: () {
                // Перейти на экран редактирования профиля
                // Реализуйте соответствующую логику
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Переход на экран редактирования профиля'),
                  ),
                );
              },
              child: Text('Редактировать профиль'),
            ),
          ],
        ),
      ),
    );
  }
}
