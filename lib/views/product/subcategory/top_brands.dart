import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_assets.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';

class TopBrands extends StatelessWidget {
  const TopBrands({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Top Brands",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        SizedBox(height: screenHeight * 0.02),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleBrand(img: AppAssets.brandHawkingsImg),
            SingleBrand(img: AppAssets.brandTTKImg),
            SingleBrand(img: AppAssets.brandStovekasImg),
            SingleBrand(img: AppAssets.brandBajajImg),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.02,
        )
      ],
    );
  }
}

class SingleBrand extends StatelessWidget {
  final String img;
  const SingleBrand({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.08,
      width: screenWidth * 0.21,
      decoration: BoxDecoration(
      color: AppColors.white,
        border: Border.all(color: AppColors.green),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(child: Image.asset(img)),
    );
  }
}
