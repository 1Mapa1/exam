import 'package:flutter/material.dart';

class PicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image List Demo',
      home: ImageListScreen(),
    );
  }
}

class ImageListScreen extends StatelessWidget {
  //Указываем список ссылок на файлы
  final List<String> imagePaths = [
    'assets/pic1.jpg',
    'assets/pic2.png',
    'assets/pic3.jpeg',
    'assets/pic4.png',
    'assets/pic5.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image List'),
      ),
      //Функция которая автоматом приобразует список в картинки и даст им прокручиваться
      body: ListView.builder(
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Image.asset(imagePaths[index]);
        },
      ),
    );
  }
}
