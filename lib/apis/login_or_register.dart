import 'package:brandklin_task/pages/login_page.dart';
import 'package:brandklin_task/pages/register_page.dart';
import 'package:flutter/widgets.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  //initally show login page
  bool showLoginPage = true;

  //toggle between login and Register page
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage)
      return LoginPage(
        onTap: togglePages,
      );
    else
      return RegisterPage(
        onTap: togglePages,
      );
  }
}
