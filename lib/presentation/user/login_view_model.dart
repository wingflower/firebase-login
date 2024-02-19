import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_login/domain/usecase/user/login_usecase.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  final LoginUsecase loginUsecase = LoginUsecase();

  Future<void> signIn({required String email, required String password}) async {
    await loginUsecase.execute(email, password);
  }

  Future<void> signUp({required String email, required String password}) async {
    // var result = await auth.createUserWithEmailAndPassword(
    //     email: email, password: password);
  }
}
