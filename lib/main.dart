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
    return MaterialApp(
      home: StationeryProductDetailsScreen(),
    );
  }
}

class StationeryProductDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Подробности о товаре'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Изображение товара
            Image.asset(
              'assets/pen.png',
              height: 200,
              width: double.infinity,
            ),
            SizedBox(height: 16),
            // Информация о товаре
            Text(
              'Ручка гелевая "SuperPen"',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            // Описание товара
            Text(
              'Отличная гелевая ручка для комфортного письма. '
                  'Доступна в различных цветах и дизайнах.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            // Информация о цене и наличии
            Text(
              'Цена: \$5.99',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'В наличии: 50 штук',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            // Кнопка для добавления в корзину
            ElevatedButton(
              onPressed: () {
                // Добавить товар в корзину
                // Реализуйте соответствующую логику
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Товар добавлен в корзину'),
                  ),
                );
              },
              child: Text('Добавить в корзину'),
            ),
          ],
        ),
      ),
    );
  }
}
