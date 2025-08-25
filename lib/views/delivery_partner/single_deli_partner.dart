import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';
import 'package:supermarketadmin/views/delivery_partner/popup.dart';
class SingleDeliPartner extends StatelessWidget {
  final int index;
  final bool showAvailable;
  const SingleDeliPartner({
    super.key,
    required this.index,
    required this.showAvailable,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> partners = [
      {'name': 'John Alex', 'status': 'Busy', 'distance': '1.2km'},
      {'name': 'V Alex', 'status': 'Available', 'distance': '2.2km'},
      {'name': 'Johnson', 'status': 'Available', 'distance': '2.3km'},
      {'name': 'Amal', 'status': 'Busy', 'distance': '3.0km'},
      {'name': 'Zyan', 'status': 'Busy', 'distance': '3.2km'},
    ];
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return SizedBox(
      height: height * 0.07,
      width: width * width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  partners[index]['name'],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      showAvailable ? "Available" : partners[index]['status'],
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: (!showAvailable &&
                                partners[index]['status'] == 'Busy')
                            ? AppColors.red
                            : AppColors.green,
                      ),
                    ),
                    SizedBox(width: width * 0.015),
                    const Text(
                      "|",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: AppColors.grey,
                      ),
                    ),
                    SizedBox(width: width * 0.015),
                    const Text(
                      "2.2km away",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: AppColors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: InkWell(
              onTap: () {
                showAssignConfirmationDialog(
                  context: context,
                  partnerName: "John Alex",
                  orderId: "552214566",
                  onConfirm: () {
                    // Handle confirmation
                  },
                );
              },
              child: Container(
                height: height * 0.045,
                width: width * 0.26,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: AppColors.brown,
                ),
                child: const Center(
                  child: Text(
                    "Assign",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
