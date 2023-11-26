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
      home: CosmeticStoreScreen(),
    );
  }
}

class Cosmetic {
  final String name;
  final String category;
  final double price;
  final String imageUrl;

  Cosmetic({
    required this.name,
    required this.category,
    required this.price,
    required this.imageUrl,
  });
}

class CosmeticStoreScreen extends StatelessWidget {
  final List<Cosmetic> cosmetics = [
    Cosmetic(
      name: 'Тональный крем',
      category: 'Основа',
      price: 25.99,
      imageUrl: 'assets/tonal_cream.png',
    ),
    Cosmetic(
      name: 'Помада',
      category: 'Губы',
      price: 12.50,
      imageUrl: 'assets/lipstick.png',
    ),
    Cosmetic(
      name: 'Тени для век',
      category: 'Глаза',
      price: 18.75,
      imageUrl: 'assets/eyeshadow.png',
    ),
    // Добавьте больше товаров по аналогии
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Магазин косметики'),
      ),
      body: ListView.builder(
        itemCount: cosmetics.length,
        itemBuilder: (context, index) {
          return CosmeticItem(cosmetic: cosmetics[index]);
        },
      ),
    );
  }
}

class CosmeticItem extends StatelessWidget {
  final Cosmetic cosmetic;

  CosmeticItem({required this.cosmetic});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.asset(
          cosmetic.imageUrl,
          width: 60.0,
          height: 60.0,
          fit: BoxFit.cover,
        ),
        title: Text(cosmetic.name),
        subtitle: Text('${cosmetic.category} - \$${cosmetic.price.toStringAsFixed(2)}'),
        onTap: () {
          // Обработка нажатия на продукт (переход к деталям, например)
        },
      ),
    );
  }
}

