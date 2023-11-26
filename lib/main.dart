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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double objectSize = 100.0;

  // Увеличение размера объекта
  void increaseSize() {
    setState(() {
      objectSize += 10.0;
    });
  }

  // Уменьшение размера объекта
  void decreaseSize() {
    setState(() {
      if (objectSize > 10.0) {
        objectSize -= 10.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Увеличение и уменьшение'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Объект, размер которого будет изменяться
            Container(
              width: objectSize,
              height: objectSize,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            // Кнопки для увеличения и уменьшения размера
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: increaseSize,
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: decreaseSize,
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
