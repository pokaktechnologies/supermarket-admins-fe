import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_assets.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';
import 'package:supermarketadmin/core/utils/navigations.dart';
import 'package:supermarketadmin/views/delivery_partner/delivery_partner.dart';

Widget personalDetailsTile(height, width, BuildContext context) {
  return Container(
    width: width * width,
    height: height * 0.12,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: AppColors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "John Doe",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              Text(
                "johndoe12@gmail.com",
                style: TextStyle(
                  color: AppColors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              ),
              Text(
                "9292929293",
                style: TextStyle(
                  color: AppColors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              )
            ],
          ),
          Column(
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: '1.8',
                      style: TextStyle(
                        color: AppColors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    TextSpan(
                      text: 'KM',
                      style: TextStyle(
                        color: AppColors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.005),
              InkWell(
                onTap: () {
                  pushNavigation(context, AssignDeliveryPartnerPage());
                },
                child: Container(
                  height: height * 0.04,
                  width: width * 0.23,
                  decoration: BoxDecoration(
                    color: AppColors.brown,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: const Center(
                    child: Text(
                      "Assign",
                      style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}

Widget paymentInformation(height, width) {
  return Container(
    width: width * width,
    height: height * 0.13,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: AppColors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Payment Information",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Payment Method",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              Text(
                "Credit Card",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Payment Status",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(AppAssets.starIcon),
                      Image.asset(AppAssets.tickImg),
                    ],
                  ),
                  SizedBox(width: width * 0.01),
                  const Text(
                    "Paid",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget deliveryInformation(height, width) {
  return Container(
    width: width * width,
    height: height * 0.15,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: AppColors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Delivery Information",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
          SizedBox(height: height * 0.01),
          const Text(
            "Delivery Address",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          const Text(
            "123 Main Street, Apt 4B,City, State, 688005",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 13,
              color: AppColors.grey,
            ),
          ),
          const Text(
            "State, 688005",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 13,
              color: AppColors.grey,
            ),
          )
        ],
      ),
    ),
  );
}

Widget orderSummary(height, width) {
  return Container(
    width: width * width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: AppColors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Order Summary",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: height * 0.01),
          Container(
            width: width * width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.lightGreen9,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "order_no #552214566",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Ordered on 10/02/2025 , 12:30 pm",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: AppColors.grey,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "X3",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: AppColors.primaryColor,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: height * 0.015),
                  rowProducts2("500g ", "Hybrid Tomato", "₹ 25"),
                  SizedBox(height: height * 0.002),
                  rowProducts2("1X  ", "Broccoli", "₹ 50"),
                  SizedBox(height: height * 0.002),
                  rowProducts2("1X ", "Chocolate", "₹ 200"),
                  SizedBox(height: height * 0.002),
                  const Divider(),
                  SizedBox(height: height * 0.002),
                  rowProducts("Sub Total", "₹ 275", 15.0, FontWeight.w500),
                  SizedBox(height: height * 0.01),
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.01),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: rowProducts("Delivery fee", "30", 15.0, FontWeight.w400),
          ),
          SizedBox(height: height * 0.005),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: rowProducts("GST and charges", "10", 15.0, FontWeight.w400),
          ),
          SizedBox(height: height * 0.01),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Divider(thickness: 1.3, color: Colors.black),
          ),
          SizedBox(height: height * 0.004),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: rowProducts("Delivery fee", "₹ 335", 17.0, FontWeight.w500),
          ),
          SizedBox(height: height * 0.004),
        ],
      ),
    ),
  );
}

Widget rowProducts(text, price, fontsize, fontweight) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text,
        style: TextStyle(
          color: AppColors.black,
          fontSize: fontsize,
          fontWeight: fontweight,
        ),
      ),
      Text(
        price,
        style: TextStyle(
          color: AppColors.black,
          fontSize: fontsize,
          fontWeight: fontweight,
        ),
      ),
    ],
  );
}

Widget rowProducts2(quantity, text, price) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: quantity,
              style: const TextStyle(
                color: AppColors.primaryColor,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: text,
              style: const TextStyle(
                color: AppColors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      Text(
        price,
        style: const TextStyle(
          color: AppColors.black,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
