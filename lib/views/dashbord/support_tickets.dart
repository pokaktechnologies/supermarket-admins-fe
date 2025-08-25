import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_assets.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';
import 'package:supermarketadmin/core/utils/navigations.dart';
import 'package:supermarketadmin/views/menu/customer_management/customer_management.dart';
class SupportTickets extends StatelessWidget {
  const SupportTickets({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return SizedBox(
      width: width * width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
        child: Column(
          children: [
            customContainer(height, width, context),
          ],
        ),
      ),
    );
  }
}

Widget customContainer(height, width, BuildContext context) {
  return Column(
    children: [
      Container(
        height: height * 0.24,
        width: width * width,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "SUPPORT TICKET",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    onTap: () {
                      pushNavigation(context, CustomerManagementScreen());
                    },
                    child: Text(
                      "View All",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.green,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: height * 0.015),
            singleList(height, width),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
              child: Divider(),
            ),
            singleList(height, width),
          ],
        ),
      ),
    ],
  );
}

Widget singleList(height, width) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: Row(
      children: [
        Container(
          height: height * 0.045,
          width: width * 0.12,
          decoration: BoxDecoration(
            color: AppColors.bgGrey,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset(AppAssets.helpIcon),
        ),
        SizedBox(width: width * 0.03),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "#101 2023-10-01",
              style: TextStyle(
                color: AppColors.grey,
                fontSize: 12,
              ),
            ),
            Text(
              "John Doe / Order",
              style: TextStyle(fontWeight: FontWeight.w500),
            )
          ],
        ),
        const Spacer(),
        Image.asset(AppAssets.orderArrowImg)
      ],
    ),
  );
}
