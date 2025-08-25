import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:supermarketadmin/core/themes/app_assets.dart';

import 'package:supermarketadmin/core/themes/app_colors.dart';
import 'package:supermarketadmin/core/utils/navigations.dart';

class AddPromotions extends StatefulWidget {
  const AddPromotions({super.key});

  @override
  State<AddPromotions> createState() => _AddPromotionsState();
}

class _AddPromotionsState extends State<AddPromotions> {
  final TextEditingController productNameController = TextEditingController();

  DateTime? startDate;
  DateTime? endDate;

  @override
  void dispose() {
    productNameController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context, bool isStart) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        if (isStart) {
          startDate = picked;
        } else {
          endDate = picked;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgGrey,
      appBar: AppBar(
        backgroundColor: const Color(0xFF27AE60),
        toolbarHeight: 70,
        title: const Text(
          "Create Promotion",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Container(
          width: double.infinity,
          height: 460,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Column(
              children: [
                _buildTextField(
                  'Summer Sale',
                  productNameController,
                  headText: "Promotion Name*",
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Expanded(
                      child: _buildTextField(
                        'Percentage',
                        productNameController,
                        headText: "Type*",
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: _buildTextField(
                        '%',
                        productNameController,
                        headText: "Discount",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                _buildTextField(
                  'SUMMER20',
                  productNameController,
                  headText: "Code",
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Expanded(
                      child: buildDatePicker('Starting Date*', startDate, true),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: buildDatePicker('Ending Date*', endDate, false),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                buildUploadImageButton(),
                const SizedBox(height: 8),
                buildPreviewButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDatePicker(String label, DateTime? date, bool isStart) {
    return GestureDetector(
      onTap: () => _selectDate(context, isStart),
      child: AbsorbPointer(
        child: TextField(
          controller: TextEditingController(
            text: date != null ? DateFormat('yyyy-MM-dd').format(date) : '',
          ),
          decoration: InputDecoration(
            labelText: label,
            suffixIcon: const Icon(Icons.calendar_today),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 12,
            ), // Reduce height
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.green),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.green, width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildTextField(
  String label,
  TextEditingController controller, {
  int maxLines = 1,
  String? prefixText,
  String? suffixText,
  double verticalPadding = 10,
  Color borderColor = Colors.green,
  String? headText,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (headText != null)
          Text(headText, style: const TextStyle(fontSize: 11)),
        TextField(
          controller: controller,
          maxLines: maxLines,
          decoration: InputDecoration(
            labelText: label,
            prefixText: prefixText,
            suffixText: suffixText,
            contentPadding: EdgeInsets.symmetric(
              vertical: verticalPadding,
              horizontal: 10,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor, width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildUploadImageButton() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text("Add Image", style: TextStyle(fontSize: 11)),
      Container(
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.green25Opacity,
        ),
        child: const Center(
          child: Text(
            "Upload Image",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    ],
  );
}

Widget buildPreviewButton() {
  return Container(
    height: 45,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: AppColors.black),
    ),
    child: const Center(
      child: Text(
        "Preview",
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
    ),
  );
}
