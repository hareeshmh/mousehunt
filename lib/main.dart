import 'package:flutter/material.dart';
import 'package:mousehunt/login_screen.dart';

void main() {
  runApp(const MouseApp());
}

class MouseApp extends StatelessWidget {
  const MouseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MouseHunt',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: const LoginForm(),
    );
  }
}
