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
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isMessageNotificationEnabled = true;
  bool _isNewSubscriberNotificationEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Настройки профиля'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Личная информация',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Имя'),
              subtitle: Text('Бобик'),
              onTap: () {
                // Обработка нажатия на изменение имени
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Электронная почта'),
              subtitle: Text('example@example.com'),
              onTap: () {
                // Обработка нажатия на изменение электронной почты
              },
            ),
            Divider(), // Горизонтальная линия-разделитель

            Text(
              'Безопасность',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Изменить пароль'),
              onTap: () {
                // Обработка нажатия на изменение пароля
              },
            ),
            Divider(),

            Text(
              'Настройки уведомлений',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SwitchListTile(
              title: Text('Уведомления о новых сообщениях'),
              value: _isMessageNotificationEnabled,
              onChanged: (value) {
                setState(() {
                  _isMessageNotificationEnabled = value;
                });
              },
            ),
            SwitchListTile(
              title: Text('Уведомления о новых подписчиках'),
              value: _isNewSubscriberNotificationEnabled,
              onChanged: (value) {
                setState(() {
                  _isNewSubscriberNotificationEnabled = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
