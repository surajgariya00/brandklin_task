import 'package:brandklin_task/components/custom_button.dart';
import 'package:brandklin_task/components/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key, required this.onTap});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();

  final void Function()? onTap;
  void register(BuildContext context) {
    // //get auth service

    // final _auth = AuthService();

    // //password match -> create user
    // if (_passController.text == _confirmPassController.text) {
    //   try {
    //     _auth.signUpWithEmailAndPassword(
    //         _emailController.text, _passController.text);
    //   } catch (e) {
    //     showDialog(
    //         context: context,
    //         builder: (context) => AlertDialog(
    //               title: Text(e.toString()),
    //             ));
    //   }
    // }
    // // password dont match -> show error

    // else {
    //   showDialog(
    //       context: context,
    //       builder: (context) => const AlertDialog(
    //             title: Text('Password dont match'),
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
              "Create an Account",
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
              onTap: () => register,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already having account ',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    'Login now',
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
