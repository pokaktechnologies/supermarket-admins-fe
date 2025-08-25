import 'package:supermarketadmin/core/config.dart';

class ApiConstants {
  static String serverUrl = ApiConfig.serverUrl;
  static String loginEndPoint = '$serverUrl/accounts/api/admin/login/';
  static String categoryEndPoint = '$serverUrl/api/categories/';
}
