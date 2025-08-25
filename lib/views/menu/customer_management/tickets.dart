import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_assets.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';
class TicketSection extends StatelessWidget {
  const TicketSection({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return SizedBox(
      width: width * width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            customContainer(height, width),
          ],
        ),
      ),
    );
  }
}

Widget customContainer(height, width) {
  return Container(
    height: height * 0.2,
    width: width * width,
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      children: [
        SizedBox(height: height * 0.03),
        singleList(height, width),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
          child: Divider(),
        ),
        singleList(height, width),
      ],
    ),
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
