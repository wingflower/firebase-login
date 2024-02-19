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
            ElevatedButton(onPressed: () {
              // 로그인 작업 수행
            }, child: Text('로그인')),
            TextFormField(
              controller: passwordController,
            ),
            ElevatedButton(onPressed: () {
              // 회원가입 화면 이동
            }, child: Text('회원 가입')),
          ],
        ),
      ),
    );
  }
}
