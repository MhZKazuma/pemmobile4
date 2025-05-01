import 'package:flutter/material.dart';
import 'login3screen.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Profil App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login3screen(),
    );
  }
}
