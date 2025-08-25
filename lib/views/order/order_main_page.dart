import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_assets.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';
import 'package:supermarketadmin/views/order/cancelled.dart';
import 'package:supermarketadmin/views/order/delivered.dart';
import 'package:supermarketadmin/views/order/pending.dart';
import 'package:supermarketadmin/views/order/processing.dart';

class OrderMainPage extends StatefulWidget {
  const OrderMainPage({super.key});

  @override
  State<OrderMainPage> createState() => _OrderMainPageState();
}

class _OrderMainPageState extends State<OrderMainPage> {
  int _selectedIndex = 0;

  final List<Map<String, String>> _tabs = [
    {'label': 'Pending', 'icon': AppAssets.pending},
    {'label': 'Processing', 'icon': AppAssets.processing},
    {'label': 'Delivered', 'icon': AppAssets.delivered},
    {'label': 'Cancelled', 'icon': AppAssets.cancelled},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgGrey,
      appBar: AppBar(
        backgroundColor: const Color(0xFF27AE60),
        toolbarHeight: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Orders",
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
      body: Column(
        children: [
          // Top Tab Bar
          Container(
            color: AppColors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(_tabs.length, (index) {
                  final isSelected = _selectedIndex == index;
                  return GestureDetector(
                    onTap: () => setState(() => _selectedIndex = index),
                    child: Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: Row(
                        children: [
                          Image.asset(
                            _tabs[index]['icon']!,
                            height: 24,
                            width: 24,
                            color: isSelected
                                ? AppColors.primaryColor
                                : Colors.black54,
                          ),
                          const SizedBox(width: 3),
                          Text(
                            _tabs[index]['label']!,
                            style: TextStyle(
                              fontSize: 14,
                              color: isSelected
                                  ? AppColors.primaryColor
                                  : Colors.black,
                              fontWeight: isSelected
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),

          // Content Based on Selected Tab
          Expanded(
            child: getSelectedWidget(_selectedIndex),
          ),
        ],
      ),
    );
  }
}

Widget getSelectedWidget(int index) {
  switch (index) {
    case 0:
      return const PendingPage();
    case 1:
      return const Processing();
    case 2:
      return const Delivered();
    case 3:
      return const Cancelled();
    default:
      return const Center(child: Text("Unknown Tab"));
  }
}
