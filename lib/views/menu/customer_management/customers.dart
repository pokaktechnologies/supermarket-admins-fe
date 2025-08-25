import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_assets.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';

class CustomerSection extends StatelessWidget {
  const CustomerSection({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return SingleChildScrollView(
      child: SizedBox(
        width: width * width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              customerListContainer(height, width),
              SizedBox(height: height * 0.01),
              supportTicketCard(height, width),
              SizedBox(height: height * 0.01),
              topIssueCard(height, width),
              SizedBox(height: height * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}

Widget rowValue(key, value) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 4),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          key,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
      ],
    ),
  );
}

Widget customerListContainer(height, width) {
  return Container(
    height: height * 0.28,
    width: width * width,
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
      child: Column(
        children: [
          SizedBox(height: height * 0.01),
          Row(
            children: [
              Image.asset(AppAssets.customerManagement),
              SizedBox(width: width * 0.02),
              const Text(
                "Total Customers",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          SizedBox(height: height * 0.015),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Text(
                    "2K",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: width * 0.02),
                  Image.asset(AppAssets.totalCustomer),
                  SizedBox(width: width * 0.02),
                  const Text(
                    "5%",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.green,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    "1.5 K",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                  ),
                  SizedBox(width: width * 0.02),
                  const Text(
                    "Active",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.green,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: height * 0.015),
          Container(
            height: height * 0.13,
            width: width * width,
            decoration: BoxDecoration(
              color: AppColors.lightGreen9,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                rowValue("Repeat Buyers", "1.5 K"),
                rowValue("Inactive Customers", "500"),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget supportTicketCard(height, width) {
  return Container(
    width: width * width,
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Support Tickets",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(height: height * 0.015),
          Container(
            width: width * width,
            decoration: BoxDecoration(
              color: AppColors.lightGreen9,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                SizedBox(height: height * 0.012),
                rowValue("Total Issue", "22"),
                rowValue("Solved", "20"),
                rowValue("Avg. Response", "1hr"),
                rowValue("Unsolved", "2"),
                SizedBox(height: height * 0.012),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget topIssueCard(height, width) {
  return Container(
    width: width * width,
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Top Issues",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(height: height * 0.015),
          Container(
            width: width * width,
            decoration: BoxDecoration(
              color: AppColors.lightGreen9,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                SizedBox(height: height * 0.012),
                rowValue("Shipping delays", "40%"),
                rowValue("Product defects", "10%"),
                rowValue("Payment issues", "15%"),
                SizedBox(height: height * 0.012),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
