import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_assets.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';

class SingleOrderCard extends StatelessWidget {
  final bool isDelivered;
  final String paymentStatus;
  final String img;
  final String name;
  final bool isCancelled;
  const SingleOrderCard({
    super.key,
    required this.isDelivered,
    required this.paymentStatus,
    required this.img,
    required this.name,
    required this.isCancelled,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Container(
      width: width * width,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text(
                  "order_no #552512343",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey,
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      "10/03/2025",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey,
                      ),
                    ),
                    SizedBox(width: width * 0.02),
                    const Text(
                      "12:15 pm",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey,
                      ),
                    ),
                    SizedBox(width: width * 0.02),
                    if (!isCancelled)
                    Text(
                      paymentStatus,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(width: width * 0.01),
                    if (!isCancelled)
                    Image.asset(img),
                  ],
                ),
                if (isDelivered)
                  const Text(
                    "Delivered at 12:15 pm",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                    ),
                  )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(AppAssets.orderArrowImg),
                SizedBox(height: height * 0.01),
                const Text(
                  "₹2025x1",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                    fontSize: 18,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
