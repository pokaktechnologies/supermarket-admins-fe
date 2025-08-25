import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';
import 'package:supermarketadmin/views/bottom/bottom_bar.dart';
import 'package:supermarketadmin/views/dashbord/dashbord_main.dart';
import 'package:supermarketadmin/views/menu/menu_main.dart';
import 'package:supermarketadmin/views/order/order_main_page.dart';
import 'package:supermarketadmin/views/product/category/category.dart';
import 'package:supermarketadmin/views/promotions/promotion_main.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  final List<Widget> _pages = const [
    DashboardMain(),
    CategoryMain(),
    PromotionMain(),
    OrderMainPage(),
    MenuMain(),
  ];

  void _onBottomBarTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: selectedIndex, children: _pages),
      bottomNavigationBar: Container(
        color: AppColors.bgGrey,
        child: BottomBar(
          selectedIndex: selectedIndex,
          onItemSelected: _onBottomBarTap,
        ),
      ),
    );
  }
}
