import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/utils/navigations.dart';
import 'package:supermarketadmin/models/services/auth_services.dart';
import 'package:supermarketadmin/views/bottom/bottompage_main.dart';

class LoginProvider extends ChangeNotifier {
  bool isLoginLoading = false;

  Future<void> userlogin(email, password, BuildContext context) async {
    try {
      isLoginLoading = true;
      notifyListeners();

      String? response = await AuthServices.loginUser(email, password);

      if (response == null) {
        pushAndRemoveUntilFun(context, MainScreen());
      } else {
        print("fail");
      }
    } catch (error) {
      print(error);
    } finally {
      isLoginLoading = false;
      notifyListeners();
    }
  }
}
