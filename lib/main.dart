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
  // Переменная для хранения выбранного ответа
  int? selectedAnswer;

  // Вопрос и варианты ответов
  final String question = "Какую оценку поставить этому студенту за экзамен?";
  final List<String> answers = ["5", "Неправильный ответ 1", "Неправильный ответ 2"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exam_25'),
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
            // Создаем Radio-кнопки для вариантов ответов
            ...List.generate(
              answers.length,
                  (index) => RadioListTile<int>(
                title: Text(answers[index]),
                value: index,
                groupValue: selectedAnswer,
                onChanged: (value) {
                  setState(() {
                    selectedAnswer = value;
                  });
                },
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Проверяем, был ли выбран правильный ответ (5)
                if (selectedAnswer == 0) {
                  _showResultDialog(true);
                } else {
                  _showResultDialog(false);
                }
              },
              child: Text('Проверить ответ'),
            ),
          ],
        ),
      ),
    );
  }

  // Метод для отображения диалогового окна с результатом
  void _showResultDialog(bool isCorrect) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(isCorrect ? 'Верно!' : 'Ошибка!'),
          content: Text(isCorrect ? 'Ответ правильный.' : 'Ответ неверный.'),
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
