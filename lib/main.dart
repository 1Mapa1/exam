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
  // Список для хранения выбранных ответов
  List<bool> selectedAnswers = List.generate(4, (index) => false);

  // Вопрос и варианты ответов
  final String question = "Какие цвета надо смешать, чтобы получить фиолетовый цвет? Выберите несколько вариантов ответа.";
  final List<String> answers = ["Синий", "Желтый", "Красный", "Белый"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exam_24'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            // Создаем чекбоксы для вариантов ответов
            ...List.generate(
              answers.length,
                  (index) => CheckboxListTile(
                title: Text(answers[index]),
                value: selectedAnswers[index],
                onChanged: (value) {
                  setState(() {
                    selectedAnswers[index] = value!;
                  });
                },
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Проверяем, были ли выбраны правильные ответы
                bool isCorrect = _checkAnswers();
                _showResultDialog(isCorrect);
              },
              child: Text('Проверить ответ'),
            ),
          ],
        ),
      ),
    );
  }

  // Метод для проверки правильности ответов
  bool _checkAnswers() {
    // Индексы правильных ответов (Синий и Красный)
    List<int> correctAnswers = [0, 2];

    // Проверяем, совпадают ли выбранные ответы с правильными
    return List.generate(
      answers.length,
          (index) => selectedAnswers[index] == (correctAnswers.contains(index)),
    ).every((element) => element);
  }

  // Метод для отображения диалогового окна с результатом
  void _showResultDialog(bool isCorrect) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(isCorrect ? 'Верно!' : 'Ошибка!'),
          content: isCorrect
              ? Text('Ответ полностью верный.')
              : Text('Ответ частично верный или неверный.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
