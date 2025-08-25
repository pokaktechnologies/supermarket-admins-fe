import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_assets.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';
import 'package:supermarketadmin/core/utils/navigations.dart';
import 'package:supermarketadmin/views/delivery_partner/single_deli_partner.dart';
class AssignDeliveryPartnerPage extends StatefulWidget {
  const AssignDeliveryPartnerPage({super.key});

  @override
  AssignDeliveryPartnerPageState createState() =>
      AssignDeliveryPartnerPageState();
}

class AssignDeliveryPartnerPageState extends State<AssignDeliveryPartnerPage> {
  bool showAvailable = true;

  @override
  Widget build(BuildContext context) {
    // List<Map<String, dynamic>> displayedList = showAvailable
    //     ? partners.where((p) => p['status'] == 'Available').toList()
    //     : partners;

    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
      backgroundColor: AppColors.bgGrey,
      appBar: AppBar(
        backgroundColor: const Color(0xFF27AE60),
        toolbarHeight: 70,
        title: const Text(
          "Assign Delivery Partner",
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Row(
              children: [
                _buildTab("Available", showAvailable, () {
                  setState(() => showAvailable = true);
                }),
                _buildTab("All", !showAvailable, () {
                  setState(() => showAvailable = false);
                }),
              ],
            ),
          ),
          // List of Partners
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
            child: Container(
              width: width * width,
              height: height * 0.48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: ListView.separated(
                  itemBuilder: (context, index) => SingleDeliPartner(
                    index: index,
                    showAvailable: showAvailable,
                  ),
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: 5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Tab Widget
  Widget _buildTab(String text, bool isActive, VoidCallback onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: isActive ? AppColors.green25Opacity : AppColors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: isActive ? AppColors.green : AppColors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
