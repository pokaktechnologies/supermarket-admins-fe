import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';
import 'package:supermarketadmin/core/utils/navigations.dart';
import 'package:supermarketadmin/views/dashbord/view_all.dart';

class DeliveryAgents extends StatelessWidget {
  const DeliveryAgents({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Container(
      height: height * 0.17,
      width: width * width,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "DELIVEY AGENTS",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(context, DeliveryAgentsPage());
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
            SizedBox(height: height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                singleTile(height, width, " Total Agents  ", "30"),
                singleTile(height, width, "Active Agents", ""),
                singleTile(height, width, "On-Time Delivery", "30"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget singleTile(height, width, text, price) {
  return Container(
    height: height * 0.11,
    width: width * 0.25,
    decoration: BoxDecoration(
      color: AppColors.lightGreen9,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            text,
            style:
                TextStyle(color: AppColors.green, fontWeight: FontWeight.w500),
          ),
          Text(
            price,
            style: TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          )
        ],
      ),
    ),
  );
}
