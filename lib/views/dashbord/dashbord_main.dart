
import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_assets.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';
import 'package:supermarketadmin/views/dashbord/calendar_tile.dart';
import 'package:supermarketadmin/views/dashbord/delivery_agents.dart';
import 'package:supermarketadmin/views/dashbord/generate_report.dart';
import 'package:supermarketadmin/views/dashbord/graph_widgets.dart';
import 'package:supermarketadmin/views/dashbord/prod_tiles.dart';
import 'package:supermarketadmin/views/dashbord/support_tickets.dart';

class DashboardMain extends StatelessWidget {
  const DashboardMain({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      backgroundColor: AppColors.softGreenOverlay,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              SizedBox(height: height * 0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(AppAssets.dashboardProfPic),
                  Container(
                    height: height * 0.1,
                    width: width * 0.09,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(AppAssets.dashboardNotification),
                  ),
                ],
              ),
              Row(
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
              const CalendarTile(),
              SizedBox(height: height * 0.01),
              const ProdTiles(),
              SizedBox(height: height * 0.01),
              salesOverTime(),
              SizedBox(height: height * 0.01),

              Image.asset(AppAssets.sampleImgOne),

              // ------------------------
              // Container(
              //   padding: const EdgeInsets.all(16),
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(16),
              //   ),
              //   child: Column(
              //     children: [
              //       const Text("ORDER STATUS",
              //           style: TextStyle(fontWeight: FontWeight.bold)),
              //       const SizedBox(height: 16),
              //       SizedBox(
              //         height: 200,
              //         child: PieChart(
              //           PieChartData(
              //             sections: [
              //               PieChartSectionData(
              //                   color: Colors.yellow, value: 15, title: ''),
              //               PieChartSectionData(
              //                   color: Colors.orange, value: 20, title: ''),
              //               PieChartSectionData(
              //                   color: Colors.deepPurple,
              //                   value: 25,
              //                   title: '25%',
              //                   titleStyle: TextStyle(color: Colors.white)),
              //               PieChartSectionData(
              //                   color: Colors.green, value: 20, title: ''),
              //               PieChartSectionData(
              //                   color: Colors.red, value: 20, title: ''),
              //             ],
              //             centerSpaceRadius: 40,
              //           ),
              //         ),
              //       ),
              //       const SizedBox(height: 16),
              //       const Wrap(
              //         alignment: WrapAlignment.center,
              //         spacing: 16,
              //         children: [
              //           StatusLegend(color: Colors.yellow, label: "Pending"),
              //           StatusLegend(color: Colors.orange, label: "Processing"),
              //           StatusLegend(
              //               color: Colors.deepPurple,
              //               label: "Out For Delivery"),
              //           StatusLegend(color: Colors.green, label: "Delivered"),
              //           StatusLegend(color: Colors.red, label: "Cancelled"),
              //         ],
              //       )
              //     ],
              //   ),
              // ),

              SizedBox(height: height * 0.01),

              // ---------------

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FilterChip(
                        label: Text("RECENT ORDERS"),
                        selected: true,
                        onSelected: (_) {}),
                    const SizedBox(width: 8),
                    FilterChip(
                        label: Text("ON-TIME DELIVERY"),
                        selected: false,
                        onSelected: (_) {}),
                    const SizedBox(width: 8),
                    FilterChip(
                        label: Text("DELIVERY UPDATES"),
                        selected: false,
                        onSelected: (_) {}),
                  ],
                ),
              ),

              SizedBox(height: height * 0.02),
              Image.asset(AppAssets.sampleImgThree),

              // Container(
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Column(
              //       children: [
              //         const Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Text("Order Id",
              //                 style: TextStyle(fontWeight: FontWeight.bold)),
              //             Text("Name",
              //                 style: TextStyle(fontWeight: FontWeight.bold)),
              //             Text("Amount",
              //                 style: TextStyle(fontWeight: FontWeight.bold)),
              //             Text("Status",
              //                 style: TextStyle(fontWeight: FontWeight.bold)),
              //           ],
              //         ),
              //         const Divider(),
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             const Text(
              //               "#123456",
              //               style: TextStyle(
              //                 fontWeight: FontWeight.w500,
              //                 color: AppColors.grey,
              //               ),
              //             ),
              //             const Text(
              //               "John Doe",
              //               style: TextStyle(
              //                 fontWeight: FontWeight.w500,
              //                 color: AppColors.grey,
              //               ),
              //             ),
              //             const Text(
              //               "2500",
              //               style: TextStyle(
              //                 fontWeight: FontWeight.w500,
              //                 color: AppColors.grey,
              //               ),
              //             ),
              //             Image.asset(AppAssets.tickImg2)
              //           ],
              //         ),
              //         SizedBox(height: height * 0.01),
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             const Text(
              //               "#123456",
              //               style: TextStyle(
              //                 fontWeight: FontWeight.w500,
              //                 color: AppColors.grey,
              //               ),
              //             ),
              //             const Text(
              //               "John Doe",
              //               style: TextStyle(
              //                 fontWeight: FontWeight.w500,
              //                 color: AppColors.grey,
              //               ),
              //             ),
              //             const Text(
              //               "2500",
              //               style: TextStyle(
              //                 fontWeight: FontWeight.w500,
              //                 color: AppColors.grey,
              //               ),
              //             ),
              //             Image.asset(AppAssets.tickImg2)
              //           ],
              //         ),
              //         SizedBox(height: height * 0.01),
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             const Text(
              //               "#123456",
              //               style: TextStyle(
              //                 fontWeight: FontWeight.w500,
              //                 color: AppColors.grey,
              //               ),
              //             ),
              //             const Text(
              //               "John Doe",
              //               style: TextStyle(
              //                 fontWeight: FontWeight.w500,
              //                 color: AppColors.grey,
              //               ),
              //             ),
              //             const Text(
              //               "2500",
              //               style: TextStyle(
              //                 fontWeight: FontWeight.w500,
              //                 color: AppColors.grey,
              //               ),
              //             ),
              //             Image.asset(AppAssets.tickImg2)
              //           ],
              //         ),
              //         SizedBox(height: height * 0.01),
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             const Text(
              //               "#123456",
              //               style: TextStyle(
              //                 fontWeight: FontWeight.w500,
              //                 color: AppColors.grey,
              //               ),
              //             ),
              //             const Text(
              //               "John Doe",
              //               style: TextStyle(
              //                 fontWeight: FontWeight.w500,
              //                 color: AppColors.grey,
              //               ),
              //             ),
              //             const Text(
              //               "2500",
              //               style: TextStyle(
              //                 fontWeight: FontWeight.w500,
              //                 color: AppColors.grey,
              //               ),
              //             ),
              //             Image.asset(AppAssets.tickImg2)
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ),

              SizedBox(height: height * 0.021),
              inverntoryGraph(),
              SizedBox(height: height * 0.021),
              const SupportTickets(),
              SizedBox(height: height * 0.021),
              const DeliveryAgents(),
              GenerateReportsPage(),

              SizedBox(height: height * 0.2),
            ],
          ),
        ),
      ),
    );
  }
}

class StatusLegend extends StatelessWidget {
  final Color color;
  final String label;
  const StatusLegend({super.key, required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(radius: 5, backgroundColor: color),
        const SizedBox(width: 4),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
