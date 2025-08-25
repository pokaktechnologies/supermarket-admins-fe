import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_assets.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';
import 'package:supermarketadmin/core/utils/navigations.dart';
import 'package:supermarketadmin/views/menu/customer_management/customer_management.dart';
import 'package:supermarketadmin/views/menu/operations.dart';

class MenuMain extends StatelessWidget {
  const MenuMain({super.key});

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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "More",
              style: TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            Container(
              height: 45,
              width: 45,
              decoration: const BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  AppAssets.notifIcon,
                  height: 25,
                  width: 25,
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(height: height * 0.02),
            InkWell(
              onTap: () {
                pushNavigation(context, const OperationsPage());
              },
              child: singleMenuItems(
                  height, width, "Operations", AppAssets.operations),
            ),
            SizedBox(height: height * 0.015),
            InkWell(
              onTap: () {
                pushNavigation(context, const CustomerManagementScreen());
              },
              child: singleMenuItems(height, width, "Customer Management",
                  AppAssets.customerManagement),
            ),
            SizedBox(height: height * 0.015),
            singleMenuItems(height, width, "Inventory Management",
                AppAssets.inventoryManagement),
            SizedBox(height: height * 0.015),
            singleMenuItems(
                height, width, "Delivery Agents", AppAssets.deliveryAgents),
            SizedBox(height: height * 0.015),
            singleMenuItems(height, width, "Settings", AppAssets.settings),
            SizedBox(height: height * 0.015),
            singleMenuItems(
                height, width, "Support and Helpdesk", AppAssets.helpDesk),
            SizedBox(height: height * 0.015),
            singleMenuItems(height, width, "Log Out", AppAssets.logout),
          ],
        ),
      ),
    );
  }
}

Widget singleMenuItems(height, width, text, img) {
  return Container(
    height: height * 0.08,
    width: width * width,
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          Image.asset(img),
          SizedBox(width: width * 0.04),
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          )
        ],
      ),
    ),
  );
}
