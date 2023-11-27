import 'package:exam/video_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exam_5',
      //Указывается экран который откроется
      home: AudioPlayerScreen(),
    );
  }
}