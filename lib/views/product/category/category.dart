import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_assets.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';
import 'package:supermarketadmin/views/product/category/add_category_sheet.dart';
import 'package:supermarketadmin/views/product/product_tile.dart';


class CategoryMain extends StatelessWidget {
  const CategoryMain({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      backgroundColor: AppColors.bgGrey,
      appBar: AppBar(
        backgroundColor: const Color(0xFF27AE60),
        toolbarHeight: 90,
        title: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              height: height * 0.1,
              width: width * 0.09,
              decoration: const BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
              ),
              child: Image.asset(AppAssets.dashboardCal),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Categories",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            
InkWell(
                  onTap: () {
                    // pushNavigation(
                    //   context,
                    //   const SubCategory(selectedTitle: "Office & School"),
                    // );
                  },
                  child: const ProductTile(
                    text: "Office & School",
                    image: AppAssets.officeImg,
                    isEllipsed: true,
                  ),
                ),
            
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => addCategorySheet(context),
        elevation: 6.0,
        shape: const CircleBorder(),
        backgroundColor: AppColors.brown,
        foregroundColor: AppColors.white,
        child: const Icon(Icons.add, size: 23),
      ),
    );
  }
}


// InkWell(
//                   onTap: () {
//                     pushNavigation(
//                       context,
//                       const SubCategory(selectedTitle: "Office & School"),
//                     );
//                   },
//                   child: const ProductTile(
//                     text: "Office & School",
//                     image: AppAssets.officeImg,
//                     isEllipsed: true,
//                   ),
//                 ),