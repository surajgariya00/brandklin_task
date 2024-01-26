import 'package:brandklin_task/components/custom_button.dart';
import 'package:brandklin_task/components/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key, required this.onTap});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  //tap to go to register page
  final void Function()? onTap;

  void login(BuildContext context) async {
    //auth service
    // final authService = AuthService();

    // //try login
    // try {
    //   await authService.signInWithEmailPassword(
    //       _emailController.text, _passController.text);
    // }

    // //catch any errors
    // catch (e) {
    //   showDialog(
    //       context: context,
    //       builder: (context) => AlertDialog(
    //             title: Text(e.toString()),
    //           ));
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 40),
            Text(
              "Welcome back",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary, fontSize: 20),
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
              onTap: () => login(context),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member? ',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    'Register now',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
