import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_assets.dart';
import 'package:supermarketadmin/core/utils/navigations.dart';
import 'package:supermarketadmin/views/order/order_details/order_details.dart';
import 'package:supermarketadmin/views/order/single_order_card.dart';

class Cancelled extends StatelessWidget {
  const Cancelled({super.key});

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
                isDelivered: false,
                paymentStatus: "paid",
                img: AppAssets.paidIcon,
                name: "John Doe",
                isCancelled: true,
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
                isDelivered: false,
                paymentStatus: "paid",
                img: AppAssets.paidIcon,
                name: "Alan",
                isCancelled: true,
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
                isDelivered: false,
                paymentStatus: "Unpaid",
                img: AppAssets.unpaidIcon,
                name: "Afiya Afa",
                isCancelled: true,
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
                isDelivered: false,
                paymentStatus: "paid",
                img: AppAssets.paidIcon,
                name: "Amal Amn",
                isCancelled: true,
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
                isDelivered: false,
                paymentStatus: "paid",
                img: AppAssets.paidIcon,
                name: "John Doe",
                isCancelled: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
