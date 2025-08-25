import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';


class CalendarTile extends StatelessWidget {
  const CalendarTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(7, (index) {
                  final days = [
                    'Sun',
                    'Mon',
                    'Tue',
                    'Wed',
                    'Thu',
                    'Fri',
                    'Sat'
                  ];
                  final dates = ['02', '03', '04', '05', '06', '07', '08'];
                  bool isActive = index == 1; // Highlight "Mon"
                  return Column(
                    children: [
                      Text(days[index],
                          style: TextStyle(
                            color: isActive ? Colors.green : Colors.black54,
                            fontWeight: FontWeight.w600,
                          )),
                      const SizedBox(height: 6),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: isActive ? Colors.green : Colors.grey[200],
                          shape: BoxShape.circle,
                        ),
                        child: Text(dates[index],
                            style: TextStyle(
                              color: isActive ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ],
                  );
                }),
              ),
            ),

            const SizedBox(height: 20),

            // Total Sales
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$ TOTAL SALES',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  '₹90K ▲ 5%',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.green,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Grid of 3 Cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildMetricCard(
                  icon: Icons.people,
                  title: 'CUSTOMERS',
                  value: '1K',
                  color: Colors.yellow[100]!,
                  growth: '▲ 5%',
                ),
                buildMetricCard(
                  icon: Icons.shopping_cart,
                  title: 'TOTAL ORDERS',
                  value: '800',
                  color: Colors.purple[100]!,
                  growth: '▼ 5%',
                  growthColor: Colors.red,
                ),
                buildMetricCard(
                  icon: Icons.inventory_2,
                  title: 'INVENTORY',
                  value: '25',
                  color: Colors.red[100]!,
                  growth: '⚠',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildMetricCard({
  required IconData icon,
  required String title,
  required String value,
  required Color color,
  String? growth,
  Color growthColor = Colors.green,
}) {
  return Container(
    width: 100,
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Column(
      children: [
        Icon(icon, size: 28),
        const SizedBox(height: 6),
        Text(title,
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w600)),
        const SizedBox(height: 4),
        Text(value,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        if (growth != null)
          Text(growth,
              style: TextStyle(
                  fontSize: 12,
                  color: growthColor,
                  fontWeight: FontWeight.w500)),
      ],
    ),
  );
}
