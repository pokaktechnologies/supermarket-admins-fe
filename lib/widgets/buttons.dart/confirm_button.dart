import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';
import 'package:supermarketadmin/core/utils/navigations.dart';




class ConfirmButton extends StatelessWidget {
  final String text;
  const ConfirmButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return InkWell(
      onTap: () {
        popNavigation(context);
      },
      child: Container(
        height: height * 0.065,
        width: width * width,
        decoration: BoxDecoration(
          color: AppColors.brown,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
