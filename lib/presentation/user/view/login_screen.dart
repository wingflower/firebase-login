import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            TextFormField(
              controller: emailController,
            ),
            ElevatedButton(onPressed: () {}, child: Text('로그인')),
            TextFormField(
              controller: passwordController,
            ),
            ElevatedButton(onPressed: () {}, child: Text('회원 가입')),
          ],
        ),
      ),
    );
  }
}
