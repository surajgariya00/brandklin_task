import 'package:flutter/material.dart';
import 'package:brandklin_task/components/custom_button.dart';
import 'package:brandklin_task/components/custom_textfield.dart';
import 'package:brandklin_task/pages/home/home_page.dart';
import 'package:brandklin_task/pages/login_page.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();

  void register(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  bool _isValidEmail(String email) {
    return email.isNotEmpty && email.contains('@') && email.contains('.');
  }

  bool _isValidPassword(String password) {
    return password.length >= 6;
  }

  bool _passwordsMatch(String password, String confirmPassword) {
    return password == confirmPassword;
  }

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
                "Create an Account",
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
              CustomTextField(
                hintText: 'Confirm Password',
                obsecure: true,
                controller: _confirmPassController,
              ),
              const SizedBox(
                height: 20,
              ),
              MyButton(
                text: 'Register',
                onTap: () {
                  String email = _emailController.text.trim();
                  String password = _passController.text.trim();
                  String confirmPassword = _confirmPassController.text.trim();

                  if (_isValidEmail(email) &&
                      _isValidPassword(password) &&
                      _passwordsMatch(password, confirmPassword)) {
                    register(context);
                  } else {
                    _showErrorSnackBar(
                        context, 'Invalid email or password or mismatch');
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
                    'Already have an account ',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      'Login now',
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

  void _showErrorSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
