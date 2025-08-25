import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_assets.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';
class SingleProductTile extends StatelessWidget {
  final String img;
  final String prodName;
  const SingleProductTile(
      {super.key, required this.img, required this.prodName});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Container(
      width: width * width,
      height: height * 0.13,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            Container(
              height: height * height,
              width: width * 0.25,
              decoration: BoxDecoration(
                color: AppColors.bgGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(img),
            ),
            SizedBox(width: width * 0.01),
            SizedBox(
              height: height * height,
              width: width * 0.6,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 8, top: 8, bottom: 8, right: 3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          prodName,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          children: [
                            const Text(
                              "Active",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.green
                              ),
                            ),
                            SizedBox(width: width * 0.02),
                            Image.asset(AppAssets.threeDots)
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          "₹ 35",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: width * 0.01),
                        const Text(
                          "(1kg)",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          "Stock",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: width * 0.02),
                        const Text(
                          "100 Kg",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
