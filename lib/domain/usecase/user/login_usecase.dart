import '../../../core/result.dart';
import '../../model/app_user.dart';

class LoginUsecase {
  Future<Result<AppUser>> execute() async {
    final AppUser mockUser = AppUser();
    return Result.success(mockUser);
  }
}
