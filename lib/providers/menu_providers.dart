import 'package:flutter/material.dart';

class MenuProvider extends ChangeNotifier {
  bool isBusinessHours = false;
  bool isDeliveryMangement = false;
  bool isPayment = false;

  void updateBusinessHoursStatus() {
    isBusinessHours = !isBusinessHours;
    notifyListeners();
  }

  void updateDeliveryMangementStatus() {
    isDeliveryMangement = !isDeliveryMangement;
    notifyListeners();
  }

  void updatePaymentStatus() {
    isPayment = !isPayment;
    notifyListeners();
  }
}
