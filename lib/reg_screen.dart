import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget { 

  @override 
  _RegistrationScreenState createState() => _RegistrationScreenState(); 
} 

class _RegistrationScreenState extends State<RegistrationScreen> { 

  final TextEditingController _nameController = TextEditingController(); 
  final TextEditingController _emailController = TextEditingController(); 
  final TextEditingController _passwordController = TextEditingController(); 

  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: Text('Registration'), 
      ), 
      body: Padding( 
        padding: EdgeInsets.all(16.0), 
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.stretch, 
          children: [ 
            TextField( 
              controller: _nameController, 
              decoration: InputDecoration( 
                labelText: 'Name', 
              ), 
            ), 
            SizedBox(height: 16.0), 
            TextField( 
              controller: _emailController, 
              decoration: InputDecoration( 
                labelText: 'Email', 
              ), 
            ), 
            SizedBox(height: 16.0), 
            TextField( 
              controller: _passwordController, 
              obscureText: true, 
              decoration: InputDecoration( 
                labelText: 'Password', 
              ), 
            ), 
            SizedBox(height: 16.0), 
            ElevatedButton( 
              onPressed: () { 
                // Add your registration logic here 
              }, 
              child: Text('Register'), 
            ), 
          ], 
        ), 
      ), 
    ); 
  } 
} 