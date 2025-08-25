import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_assets.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';
import 'package:supermarketadmin/core/utils/navigations.dart';
import 'package:supermarketadmin/views/product/product_main/product_main.dart';
import 'package:supermarketadmin/views/product/product_tile.dart';
import 'package:supermarketadmin/views/product/subcategory/add_subcategory_sheet.dart';
import 'package:supermarketadmin/views/product/subcategory/top_brands.dart';
class SubCategory extends StatelessWidget {
  final String selectedTitle;
  const SubCategory({super.key, required this.selectedTitle});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    return Scaffold(
      backgroundColor: AppColors.bgGrey,
      appBar: AppBar(
        backgroundColor: const Color(0xFF27AE60),
        toolbarHeight: 70,
        title: Text(
          selectedTitle,
          style: const TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.w500,
            fontSize: 17,
          ),
        ),
        leading: InkWell(
          onTap: () => popNavigation(context),
          child: Image.asset(AppAssets.backArrow),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: AppColors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const ProductMain(selectedTitle: "Fresh Produce"),
                    );
                  },
                  child: const ProductTile(
                    text: "Fresh Produce",
                    image: AppAssets.freshProduceImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const ProductMain(selectedTitle: "Dairy & Eggs"),
                    );
                  },
                  child: const ProductTile(
                    text: "Dairy & Eggs",
                    image: AppAssets.dairyAndEggImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const ProductMain(selectedTitle: "Meat & Seafood"),
                    );
                  },
                  child: const ProductTile(
                    text: "Meat & Seafood",
                    image: AppAssets.meatImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const ProductMain(selectedTitle: "Frozen Foods"),
                    );
                  },
                  child: const ProductTile(
                    text: "Frozen Foods",
                    image: AppAssets.forzenFoodImg,
                    isEllipsed: false,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.015),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const ProductMain(selectedTitle: "Pantry Staples"),
                    );
                  },
                  child: const ProductTile(
                    text: "Pantry Staples",
                    image: AppAssets.pantryImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const ProductMain(selectedTitle: "Snacks & Sweets"),
                    );
                  },
                  child: const ProductTile(
                    text: "Snacks & Sweets",
                    image: AppAssets.snacksAndSweetsImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const ProductMain(selectedTitle: "Beverages"),
                    );
                  },
                  child: const ProductTile(
                    text: "Beverages",
                    image: AppAssets.beverageImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const ProductMain(selectedTitle: "Breakfast Foods"),
                    );
                  },
                  child: const ProductTile(
                    text: "Breakfast Foods",
                    image: AppAssets.breakfastFoodImg,
                    isEllipsed: false,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.015),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const ProductMain(selectedTitle: "Cookware"),
                    );
                  },
                  child: const ProductTile(
                    text: "Cookware",
                    image: AppAssets.cookwareImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const ProductMain(selectedTitle: "Cutlery"),
                    );
                  },
                  child: const ProductTile(
                    text: "Cutlery",
                    image: AppAssets.cutleryImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const ProductMain(selectedTitle: "Small Appliances"),
                    );
                  },
                  child: const ProductTile(
                    text: "Small Appliances",
                    image: AppAssets.smallAppliancesImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const ProductMain(selectedTitle: "Food Storage"),
                    );
                  },
                  child: const ProductTile(
                    text: "Food Storage",
                    image: AppAssets.foodStorageImg,
                    isEllipsed: false,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.015),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const ProductMain(selectedTitle: "Tableware"),
                    );
                  },
                  child: const ProductTile(
                    text: "Tableware",
                    image: AppAssets.tablewareImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const ProductMain(selectedTitle: "Kitchen Tools"),
                    );
                  },
                  child: const ProductTile(
                    text: "Kitchen Tools",
                    image: AppAssets.kitchenToolsImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const ProductMain(selectedTitle: "Cleaning Supplies"),
                    );
                  },
                  child: const ProductTile(
                    text: "Cleaning Supplies",
                    image: AppAssets.cleaningSuppliesImg,
                    isEllipsed: false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      const ProductMain(selectedTitle: "Specialty Items"),
                    );
                  },
                  child: const ProductTile(
                    text: "Specialty Items",
                    image: AppAssets.specialityItems,
                    isEllipsed: false,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            const TopBrands()
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => addSubCategorySheet(context),
        elevation: 6.0,
        shape: const CircleBorder(),
        backgroundColor: AppColors.brown,
        foregroundColor: AppColors.white,
        child: const Icon(Icons.add, size: 23),
      ),
    );
  }
}
