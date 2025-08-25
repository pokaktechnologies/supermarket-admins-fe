import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_assets.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';
import 'package:supermarketadmin/core/utils/navigations.dart';
import 'package:supermarketadmin/views/product/product_main/add_product.dart';
import 'package:supermarketadmin/views/product/product_main/single_product_tile.dart';
class ProductMain extends StatelessWidget {
  final String selectedTitle;
  const ProductMain({super.key, required this.selectedTitle});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width * width,
              height: height * 0.15,
              color: AppColors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        pushNavigation(context, const AddProductPage());
                      },
                      child: Container(
                        height: height * 0.08,
                        width: width * 0.16,
                        decoration: BoxDecoration(
                          color: AppColors.brown,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: AppColors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    SizedBox(width: width * 0.03),
                    smallImgContainer(
                        height, width, AppAssets.vegetablesImg, "Vegetables"),
                    SizedBox(width: width * 0.03),
                    smallImgContainer(
                        height, width, AppAssets.fruitsImg, "Fruits"),
                    SizedBox(width: width * 0.03),
                    smallImgContainer(
                        height, width, AppAssets.herbsImg, "Herbs")
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: SingleProductTile(
                img: AppAssets.tomato,
                prodName: "Hybrid Tomato",
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: SingleProductTile(
                img: AppAssets.broccoli,
                prodName: "Broccoli",
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: SingleProductTile(
                img: AppAssets.potato,
                prodName: "Potato",
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: SingleProductTile(
                img: AppAssets.beetroot,
                prodName: "Beetroot",
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: SingleProductTile(
                img: AppAssets.cauliflower,
                prodName: "Cauliflower",
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: SingleProductTile(
                img: AppAssets.eggplant,
                prodName: "Eggplant",
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget smallImgContainer(height, width, img, text) {
  return SizedBox(
    height: height * 0.12,
    width: width * 0.22,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: height * 0.08,
          width: width * 0.22,
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.bgGrey),
              borderRadius: BorderRadius.circular(12)),
          child: Image.asset(img),
        ),
        Text(text)
      ],
    ),
  );
}
