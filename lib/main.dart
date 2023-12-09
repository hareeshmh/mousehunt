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
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 4, 2, 78)),
        scaffoldBackgroundColor: const Color.fromARGB(255, 25, 1, 66),
        useMaterial3: true,
      ),
      home: const LoginForm(),
    );
  }
}
