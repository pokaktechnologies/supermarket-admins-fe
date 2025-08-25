import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_assets.dart';
import 'package:supermarketadmin/core/utils/navigations.dart';

class DeliveryAgentsPage extends StatelessWidget {
  final List<Map<String, String>> agents = [
    {"name": "John Alex", "status": "Active"},
    {"name": "V Alex", "status": "Offline"},
    {"name": "Johnson", "status": "Offline"},
    {"name": "Amal", "status": "Active"},
    {"name": "Zyan", "status": "Active"},
  ];

  DeliveryAgentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          Container(
            color: Colors.green,
            padding: const EdgeInsets.only(
              top: 40,
              left: 16,
              right: 16,
              bottom: 20,
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    popNavigation(context);
                  },
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
                SizedBox(width: 10),
                Text(
                  'Delivery Agents',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.groups, size: 18),
                    SizedBox(width: 8),
                    Text(
                      "Total Agents",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text("05"),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("Avg. Rating"), Text("On-Time Rate")],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "4.7",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "88%",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Agents",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: agents.length,
              itemBuilder: (context, index) {
                final agent = agents[index];
                final isActive = agent["status"] == "Active";

                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      AppAssets.dashProfPic,
                    ), // Replace with correct image asset
                  ),
                  title: Text(agent["name"] ?? ""),
                  subtitle: Text("50 Orders | 4.5 ★"),
                  trailing: Text(
                    agent["status"] ?? "",
                    style: TextStyle(
                      color: isActive ? Colors.green : Colors.red,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
