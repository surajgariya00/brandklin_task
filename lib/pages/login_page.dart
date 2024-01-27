import 'package:flutter/material.dart';
import 'package:brandklin_task/components/custom_button.dart';
import 'package:brandklin_task/components/custom_textfield.dart';
import 'package:brandklin_task/pages/home/home_page.dart';
import 'package:brandklin_task/pages/register_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png'),
              const SizedBox(height: 40),
              Text(
                "Welcome back",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              CustomTextField(
                hintText: 'Email',
                obsecure: false,
                controller: _emailController,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                hintText: 'Password',
                obsecure: true,
                controller: _passController,
              ),
              const SizedBox(
                height: 20,
              ),
              MyButton(
                text: 'Login',
                onTap: () {
                  String email = _emailController.text.trim();
                  String password = _passController.text.trim();

                  if (_isValidEmail(email) && _isValidPassword(password)) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  } else {
                    // Show an error message
                    _showErrorSnackBar(context, 'Invalid email or password');
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member? ',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    child: Text(
                      'Register now',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  bool _isValidEmail(String email) {
    return email.isNotEmpty && email.contains('@') && email.contains('.');
  }

  bool _isValidPassword(String password) {
    return password.length >= 6;
  }

  void _showErrorSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
