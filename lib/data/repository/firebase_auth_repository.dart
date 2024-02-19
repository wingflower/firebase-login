import 'package:firebase_auth/firebase_auth.dart';

import '../../core/result.dart';
import '../../domain/model/app_user.dart';

abstract interface class AuthRepository<T> {
  Future<Result<bool>> login(T model);
  Future<Result<bool>> logout();
  Future<Result<bool>> register(T model);
}

class FirebaseAuthRepository implements AuthRepository<AppUser> {
  final auth = FirebaseAuth.instance;

  @override
  Future<Result<bool>> login(AppUser model) async {
    try {
      await auth.signInWithEmailAndPassword(
          email: model.email, password: model.password);
      return Result.success(true);
    } on FirebaseAuthException catch (e) {
      return Result.error(e.code);
    }
  }

  @override
  Future<Result<bool>> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Result<bool>> register(AppUser model) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
