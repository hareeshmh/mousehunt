import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mousehunt/firebase/firebase_options.dart';
import 'package:mousehunt/landing_screen.dart';
import 'package:mousehunt/login_screen.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MouseApp());
}

class MouseApp extends StatelessWidget {
  const MouseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MouseHunt',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 4, 2, 78)),
        scaffoldBackgroundColor: const Color.fromARGB(255, 25, 1, 66),
        useMaterial3: true,
      ),
      home: const LandingScreen(),
    );
  }
}
