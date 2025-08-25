import 'package:flutter/material.dart';
import 'package:supermarketadmin/models/data-models/category_model.dart';
import 'package:supermarketadmin/models/services/category_services.dart';

class CategoryProviders extends ChangeNotifier {
  bool isSection = true;
  bool isCategoryLoading = false;
  var categoryList = <CategoryModel>[];

  CategoryProviders(){
    getAllCategory();
  }


  void makeTrue() {
    isSection = true;
    notifyListeners();
  }

  void makeFalse() {
    isSection = false;
    notifyListeners();
  }

  Future<void> getAllCategory() async {
    try {
      isCategoryLoading = true;
      notifyListeners();

      List<CategoryModel> categoryItems =
          await CategoryServices.getAllCategory();

      if (categoryItems.isNotEmpty) {
        categoryList = categoryItems;
      } else {
        categoryList.clear();
      }
    } catch (e) {
      print("error => $e");
    } finally {
      isCategoryLoading = false;
      notifyListeners();
    }
  }
}
