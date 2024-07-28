import 'package:dio/dio.dart';
import 'package:vikncodes_task/core/exception/api_exception.dart';
import 'package:vikncodes_task/model/user_model/user_model.dart';

class AuthService {
  final dio = Dio(BaseOptions(baseUrl: "https://api.accounts.vikncodes.com"));

  Future<UserModel> login(String email, String password) async {
    try {
      final Response response = await dio.post(
        "/api/v1/users/login",
        data: {
          "username": email,
          "password": password,
          "is_mobile": true,
        },
      );
      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      } else {
        throw Exception('Failed to login');
      }
    } on ApiException catch (e) {
      throw ApiException(e.message);
    }
  }
}
