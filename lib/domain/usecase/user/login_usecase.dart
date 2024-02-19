import 'package:firebase_login/data/repository/firebase_auth_repository.dart';

import '../../../core/result.dart';
import '../../model/app_user.dart';

class LoginUsecase {
  final repo = FirebaseAuthRepository();

  Future<Result<bool>> execute(String email, String password) {
    final AppUser tempUser = AppUser(email: email, password: password);
    return repo.login(tempUser);
  }
}
