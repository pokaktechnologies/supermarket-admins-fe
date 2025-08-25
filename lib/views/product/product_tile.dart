import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_assets.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';

class ProductTile extends StatelessWidget {
  final String text;
  final String image;
  final bool isEllipsed;
  const ProductTile({
    super.key,
    required this.text,
    required this.image,
    required this.isEllipsed,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.14,
      width: screenWidth * 0.21,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              text,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
            ),
          ),
          const Spacer(),
          SizedBox(
            height: screenHeight * 0.08,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 8,
                  child: SizedBox(
                    height: screenHeight * 0.06,
                    child: Image.asset(
                      image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                if (isEllipsed)
                  Positioned(
                    bottom: 0,
                    child: SizedBox(
                      height: screenHeight * 0.025,
                      child: Image.asset(
                        AppAssets.ellipseIcon,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
