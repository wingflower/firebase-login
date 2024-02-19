import 'package:firebase_auth/firebase_auth.dart';

import '../../core/result.dart';
import '../../domain/model/app_user.dart';


abstract interface class AuthRepository<T>{
  Future<Result<bool>> login(T model);
  Future<Result<bool>> logout();
  Future<Result<bool>> register(T model);
}


class FirebaseAuthRepository implements AuthRepository<AppUser> {
  @override
  Future<Result<bool>> login(AppUser model) {
    // TODO: implement login
    throw UnimplementedError();
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