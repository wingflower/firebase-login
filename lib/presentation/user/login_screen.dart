import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_login/presentation/user/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginViewModel viewModel = context.read();

    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            TextFormField(
              controller: emailController,
            ),
            ElevatedButton(
                onPressed: () async {
                  // 로그인 작업 수행
                  var result = await viewModel.signIn(
                      email: emailController.text,
                      password: passwordController.text);
                },
                child: Text('로그인')),
            TextFormField(
              controller: passwordController,
            ),
            ElevatedButton(
                onPressed: () async {
                  // 회원가입 화면 이동
                  var result = await viewModel.signUp(
                      email: emailController.text,
                      password: passwordController.text);
                },
                child: Text('회원 가입')),
          ],
        ),
      ),
    );
  }
}
