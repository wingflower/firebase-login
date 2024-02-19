import '../../../core/result.dart';
import '../../model/app_user.dart';

class LogoutUsecase {
  Future<Result<bool>> execute() async {
    return Result.success(true);
  }
}
