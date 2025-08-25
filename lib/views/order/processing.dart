import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_assets.dart';
import 'package:supermarketadmin/core/utils/navigations.dart';
import 'package:supermarketadmin/views/order/order_details/order_details.dart';
import 'package:supermarketadmin/views/order/single_order_card.dart';
class Processing extends StatelessWidget {
  const Processing({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: height * 0.02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: InkWell(
              onTap: () {
                pushNavigation(context, const OrderDetails());
              },
              child: const SingleOrderCard(
                isDelivered: true,
                paymentStatus: "paid",
                img: AppAssets.paidIcon,
                name: "John Doe",
                isCancelled: false,
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: InkWell(
              onTap: () {
                pushNavigation(context, const OrderDetails());
              },
              child: const SingleOrderCard(
                isDelivered: true,
                paymentStatus: "Unpaid",
                img: AppAssets.unpaidIcon,
                name: "John Doe",
                isCancelled: false,
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: InkWell(
              onTap: () {
                pushNavigation(context, const OrderDetails());
              },
              child: const SingleOrderCard(
                isDelivered: true,
                paymentStatus: "paid",
                img: AppAssets.paidIcon,
                name: "John Doe",
                isCancelled: false,
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: InkWell(
              onTap: () {
                pushNavigation(context, const OrderDetails());
              },
              child: const SingleOrderCard(
                isDelivered: true,
                paymentStatus: "Unpaid",
                img: AppAssets.unpaidIcon,
                name: "John Doe",
                isCancelled: false,
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: InkWell(
              onTap: () {
                pushNavigation(context, const OrderDetails());
              },
              child: const SingleOrderCard(
                isDelivered: true,
                paymentStatus: "paid",
                img: AppAssets.paidIcon,
                name: "John Doe",
                isCancelled: false,
              ),
            ),
          ),
          SizedBox(height: height * 0.03),
        ],
      ),
    );
  }
}
