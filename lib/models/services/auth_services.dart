import 'package:dio/dio.dart';
import 'package:supermarketadmin/core/api/api_constants.dart';
import 'package:supermarketadmin/core/secure_storage.dart';

class AuthServices {
  static Future<String?> loginUser(String email, String password) async {
    try {
      final dio = Dio();

      var payload = {'email': email, 'password': password};

      final response = await dio.post(
        ApiConstants.loginEndPoint,
        data: payload,
      );
      if (response.statusCode == 200) {
        SecureStorageService secureStorage = SecureStorageService();

        Map<String, dynamic>? responseData = response.data;

        if (responseData != null && responseData['data'] != null) {
          Map<String, dynamic> innerData = responseData['data'];
          print("access => ${innerData["access"]}");
          String accessToken = innerData["access"];
          await secureStorage.storeToken(accessToken);
        }
        return null;
      } else {
        return response.data.toString();
      }
    } catch (error) {
      print("login error : $error");
      return "$error";
    }
  }
}
