import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:vikncodes_task/core/exception/api_exception.dart';
import 'package:vikncodes_task/model/user_profile_moel/user_profile_moel.dart';

class GetUserProfileService {
  final dio = Dio(BaseOptions(baseUrl: 'https://www.api.viknbooks.com'));

  Future<UserProfileModel> getUserDetails({required String token}) async {
    try {
      final response = await dio.get(
        '/api/v10/users/user-view/62/',
        options: Options(
          headers: {
            'content-Type': 'application/json',
            'Authorization': "Bearer $token"
          },
        ),
      );
      if (response.statusCode == 200) {
        log(response.data.toString());
        return UserProfileModel.fromJson(response.data);
      } else {
        throw const ApiException('Failed to fetch user details');
      }
    } on ApiException catch (e) {
      throw ApiException(e.message);
    }
  }
}
