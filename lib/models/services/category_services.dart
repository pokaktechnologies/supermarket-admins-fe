import 'package:dio/dio.dart';
import 'package:supermarketadmin/core/api/api_constants.dart';
import 'package:supermarketadmin/core/secure_storage.dart';
import 'package:supermarketadmin/models/data-models/category_model.dart';

class CategoryServices {
  static Future<List<CategoryModel>> getAllCategory() async {
    final dio = Dio();

    final token = await SecureStorageService().getToken();

    final options = Options(headers: {'Authorization': 'JWT $token'});

    final response = await dio.get(
      ApiConstants.categoryEndPoint,
      options: options,
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> categoryJson = jsonData['data'];

      if (jsonData["status"] == "1") {
        List<CategoryModel> categoryList = categoryJson
            .map((json) => CategoryModel.fromJson(json))
            .toList();

        return categoryList;
      } else {
        throw Exception('Error: ${jsonData["message"]}');
      }
    } else {
      throw Exception('Failed to load category');
    }
  }
}
