import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_assets.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';
import 'package:supermarketadmin/core/utils/navigations.dart';
import 'package:supermarketadmin/views/promotions/add_promotions.dart';

class PromotionMain extends StatelessWidget {
  const PromotionMain({super.key});

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
              "Promotions",
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Container(
          width: width * width,
          height: height * 0.22,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ),
            child: Column(
              children: [
                Container(
                  height: height * 0.1,
                  width: width * width,
                  decoration: BoxDecoration(
                    color: AppColors.lightGreen9,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Row(
                      children: [
                        Image.asset(AppAssets.saleOfferImg),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Summer Sale",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Image.asset(AppAssets.threeDotGreen),
                                ],
                              ),
                              const Text(
                                "Percentage Discount (20% off)",
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 13,
                                ),
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Code:",
                                    style: TextStyle(
                                      color: AppColors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "SUMMER20",
                                    style: TextStyle(
                                      color: AppColors.green,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height * 0.01),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 5),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Validity",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColors.grey,
                            ),
                          ),
                          SizedBox(width: width * 0.014),
                          const Text(
                            "1st May 2025 - 31st May 2025",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: AppColors.black,
                            ),
                          ),
                          SizedBox(width: width * 0.045),
                          const Text(
                            "Active",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColors.green,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: height * 0.01),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 5),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Usage",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColors.grey,
                            ),
                          ),
                          SizedBox(width: width * 0.014),
                          const Text(
                            "150 uses",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: AppColors.black,
                            ),
                          ),
                          SizedBox(width: width * 0.045),
                          const Text(
                            "Revenue ",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColors.grey,
                            ),
                          ),
                          const Text(
                            "₹ 5000",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColors.black,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        heroTag: 'promotionMainFAB',
        onPressed: () {
          pushNavigation(context, const AddPromotions());
        },
        elevation: 6.0,
        shape: const CircleBorder(),
        backgroundColor: AppColors.brown,
        foregroundColor: AppColors.white,
        child: const Icon(Icons.add, size: 23),
      ),
    );
  }
}
