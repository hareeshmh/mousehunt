import 'package:flutter/material.dart';
import 'package:mousehunt/utils/utils.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple[100]!, Colors.purple[200]!],
            ),
          ),
          child: SizedBox(
            width: 500,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: emailController,
                    decoration: const InputDecoration(labelText: 'Email'),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(labelText: 'Password'),
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () {
                      String email = '';
                      String password = '';
                      if (emailController.text.isNotEmpty) {
                        email = emailController.text;
                        if(passwordController.text.isNotEmpty) {
                          password = passwordController.text;
                          print('Email: $email, Password: $password');
                        } else {
                          Utils().mySnackBar(context, 'Please enter your password!');
                        }
                      } else {
                        Utils().mySnackBar(context, 'Please enter your email!');
                      }
                    },
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose the controllers when the widget is disposed
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
