import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_assets.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';
import 'package:supermarketadmin/core/utils/navigations.dart';
import 'package:supermarketadmin/views/order/order_details/details_tails.dart';
import 'package:supermarketadmin/views/order/order_details/order_history_timeline.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      backgroundColor: AppColors.bgGrey,
      appBar: AppBar(
        backgroundColor: const Color(0xFF27AE60),
        toolbarHeight: 70,
        title: const Text(
          "Order Details",
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.w500,
            fontSize: 17,
          ),
        ),
        leading: InkWell(
          onTap: () => popNavigation(context),
          child: Image.asset(AppAssets.backArrow),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Column(
            children: [
              personalDetailsTile(height, width, context),
              SizedBox(height: height * 0.014),
              orderSummary(height, width),
              SizedBox(height: height * 0.014),
              paymentInformation(height, width),
              SizedBox(height: height * 0.014),
              deliveryInformation(height, width),
              SizedBox(height: height * 0.014),
              const OrderHistoryTimeline(),
            ],
          ),
        ),
      ),
    );
  }
}
