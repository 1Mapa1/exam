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
        title: Text('Подробности о квартире'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Изображение квартиры
            Image.asset(
              'assets/apt.png',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            // Информация о квартире
            Text(
              '3-комнатная квартира, Центр города',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            // Описание квартиры
            Text(
              'Прекрасная квартира в самом центре города. '
                  'Большие светлые комнаты, красивый вид из окон.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            // Информация о цене и условиях аренды
            Text(
              'Стоимость аренды: \$1200/месяц',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Залог: \$1500',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            // Контактная информация
            Text(
              'Свяжитесь с нами для дополнительной информации:',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Телефон: +1 123-456-7890',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Email: info@example.com',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
