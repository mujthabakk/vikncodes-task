import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vikncodes_task/model/user_model/user_model.dart';
import 'package:vikncodes_task/service/Auth/auth_service.dart';
part 'login_provider.g.dart';

@riverpod
class Login extends _$Login {
  @override
  bool build() {
    return false;
  }

  Future<UserModel> login(
      {required String email, required String password}) async {
    return await AuthService().login(email, password);
  }
}
