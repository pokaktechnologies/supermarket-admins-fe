import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supermarketadmin/core/themes/app_assets.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';
import 'package:supermarketadmin/core/utils/navigations.dart';
import 'package:supermarketadmin/providers/menu_providers.dart';

class OperationsPage extends StatelessWidget {
  const OperationsPage({super.key});

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
          "Operations",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(height: height * 0.02),
            Consumer<MenuProvider>(
              builder: (context, provider, child) {
                return Container(
                  width: width * width,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 22, vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Business Hours",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                provider.updateBusinessHoursStatus();
                              },
                              child: Image.asset(
                                provider.isBusinessHours
                                    ? AppAssets.upArrow
                                    : AppAssets.downArrow,
                              ),
                            )
                          ],
                        ),
                      ),
                      if (provider.isBusinessHours)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Quick Settings",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: height * 0.04,
                                        width: width * 0.15,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: AppColors.green),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "08 AM",
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: width * 0.01),
                                      Container(
                                        height: height * 0.04,
                                        width: width * 0.15,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: AppColors.green),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "10 PM",
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: height * 0.01),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Custom Hours",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 10,
                                  )
                                ],
                              ),
                              SizedBox(height: height * 0.02),
                            ],
                          ),
                        )
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: height * 0.02),
            Consumer<MenuProvider>(
              builder: (context, provider, child) {
                return Container(
                  width: width * width,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 22, vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Delivery Management",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                provider.updateDeliveryMangementStatus();
                              },
                              child: Image.asset(
                                provider.isDeliveryMangement
                                    ? AppAssets.upArrow
                                    : AppAssets.downArrow,
                              ),
                            )
                          ],
                        ),
                      ),
                      if (provider.isDeliveryMangement)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Delivery Radius",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Container(
                                    height: height * 0.04,
                                    width: width * 0.15,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: AppColors.green),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "10 KM",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: height * 0.01),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Delivery Fee",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Container(
                                    height: height * 0.04,
                                    width: width * 0.15,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: AppColors.green),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "25",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: height * 0.02),
                            ],
                          ),
                        )
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: height * 0.02),
            Consumer<MenuProvider>(
              builder: (context, provider, child) {
                return Container(
                  width: width * width,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 22, vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Payments",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                provider.updatePaymentStatus();
                              },
                              child: Image.asset(
                                provider.isPayment
                                    ? AppAssets.upArrow
                                    : AppAssets.downArrow,
                              ),
                            )
                          ],
                        ),
                      ),
                      if (provider.isPayment)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Cash on Delivery",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Image.asset(AppAssets.toggleImg)
                                ],
                              ),
                              SizedBox(height: height * 0.015),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Credit/Debit Card",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Image.asset(AppAssets.toggleImg)
                                ],
                              ),
                              SizedBox(height: height * 0.015),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "UPI",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Image.asset(AppAssets.toggleImg)
                                ],
                              ),
                              SizedBox(height: height * 0.02),
                            ],
                          ),
                        )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget singleTile(height, width, text, isSelected) {
  return Container(
    // height: height * 0.075,
    width: width * width,
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
              Image.asset(AppAssets.downArrow)
            ],
          ),
        ),
        if (isSelected) Text("haiii")
      ],
    ),
  );
}
