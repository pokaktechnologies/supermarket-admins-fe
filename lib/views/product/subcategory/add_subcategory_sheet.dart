import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';
import 'package:supermarketadmin/core/utils/navigations.dart';
import 'package:supermarketadmin/providers/category_providers.dart';
import 'package:supermarketadmin/widgets/buttons.dart/confirm_button.dart';
import 'package:supermarketadmin/widgets/buttons.dart/outerline_button.dart';

void addSubCategorySheet(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return Container(
        height: 650,
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      popNavigation(context);
                    },
                  ),
                ],
              ),
              Consumer<CategoryProviders>(
                builder: (context, provider, child) {
                  return Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.green25Opacity,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              provider.makeTrue();
                            },
                            child: Container(
                              height: 45,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: provider.isSection
                                    ? AppColors.lightGreen
                                    : AppColors.green25Opacity,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                ),
                              ),
                              child: Text(
                                "Add Section",
                                style: TextStyle(
                                  color: provider.isSection
                                      ? AppColors.white
                                      : AppColors.primaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              provider.makeFalse();
                            },
                            child: Container(
                              height: 45,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: !provider.isSection
                                    ? AppColors.lightGreen
                                    : AppColors.green25Opacity,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                ),
                              ),
                              child: Text(
                                "Add New Brand",
                                style: TextStyle(
                                  color: provider.isSection
                                      ? AppColors.primaryColor
                                      : AppColors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "*Enter Category Name",
                  style: TextStyle(
                    color: AppColors.green,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.white,
                  focusColor: AppColors.green,
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.green, width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.green, width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.green, width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Category Name',
                  hintStyle: const TextStyle(color: AppColors.grey),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "*Add Image",
                  style: TextStyle(
                    color: AppColors.green,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.white,
                  focusColor: AppColors.green,
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.green, width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.green, width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.green, width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Image',
                  hintStyle: const TextStyle(color: AppColors.grey),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 5),
              const Text(
                "Upload a high-quality image that represents this category Recommended size: 800x800 pixels, PNG or JPG format",
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "*Product Name",
                  style: TextStyle(
                    color: AppColors.green,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.white,
                  focusColor: AppColors.green,
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.green, width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.green, width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.green, width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Product Name',
                  hintStyle: const TextStyle(color: AppColors.grey),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 60),
              const OuterlineButton(text: "Add Products"),
              const SizedBox(height: 10),
              const ConfirmButton(text: "Publish")
            ],
          ),
        ),
      );
    },
  );
}
