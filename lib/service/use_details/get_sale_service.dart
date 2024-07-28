import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:vikncodes_task/core/exception/api_exception.dart';
import 'package:vikncodes_task/model/user_details/user_details.dart';

class GetSaleService {
  final dio = Dio(
    BaseOptions(baseUrl: 'https://www.api.viknbooks.com'),
  );

  Future<UserDetails> userdetails({required String token}) async {
    try {
      final Response response = await dio.post(
        '/api/v10/sales/sale-list-page/',
        data: {
          "BranchID": 1,
          "CompanyID": "1901b825-fe6f-418d-b5f0-7223d0040d08",
          "CreatedUserID": 62,
          "PriceRounding": 2,
          "page_no": 2,
          "items_per_page": 10,
          "type": "Sales",
          "WarehouseID": 1
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': "Bearer $token"
          },
        ),
      );
      if (response.statusCode == 200) {
        log(response.data.toString());
        return UserDetails.fromJson(response.data);
      } else {
        throw ApiException(
            "Bad request with status code: ${response.statusCode}");
      }
    } on DioError catch (e) {
      if (e.response != null) {
        // The server responded with a non-2xx status code
        throw ApiException(
            'Request failed with status: ${e.response?.statusCode}, data: ${e.response?.data}');
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        throw ApiException(e.message);
      }
    } catch (e) {
      // Other unknown errors
      throw ApiException('An unknown error occurred: $e');
    }
  }
}
