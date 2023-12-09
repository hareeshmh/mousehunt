import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mousehunt/login_screen.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              _auth.signOut().then((value) {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              }).catchError(
                    (onError) => print(onError),
                  );
            },
            icon: const Icon(
              Icons.logout,
            ),
          )
        ],
      ),
      body: const Center(
        child: Text(
          'Dashboard',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
