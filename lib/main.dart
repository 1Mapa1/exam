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
      home: ClothingItemScreen(),
    );
  }
}


//Создаем класс для удобного хранения данных
class ClothingItem {
  final String name;
  final String category;
  final double price;
  final String imageUrl;

  ClothingItem({
    required this.name,
    required this.category,
    required this.price,
    required this.imageUrl,
  });
}

class ClothingItemScreen extends StatelessWidget {
  final ClothingItem clothingItem = ClothingItem(
    name: 'Джинсовая куртка',
    category: 'Верхняя одежда',
    price: 79.99,
    imageUrl: 'assets/denim_jacket.png',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Магазин одежды'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              //Вызываем сохраненое изображение
              child: Image.asset(
                clothingItem.imageUrl,
                width: 200.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              clothingItem.name,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              clothingItem.category,
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 8.0),
            Text(
              '\$${clothingItem.price.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18.0, color: Colors.blue),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Добавьте обработчик для добавления товара в корзину или детали заказа
              },
              child: Text('Добавить в корзину'),
            ),
          ],
        ),
      ),
    );
  }
}
