import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';


class OrderHistoryTimeline extends StatelessWidget {
  const OrderHistoryTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> orderSteps = [
      {
        'title': 'Order placed',
        'time': '10/02/2025 , 12:30 pm',
        'status': 'done',
      },
      {
        'title': 'Payment confirmed',
        'time': '10/02/2025 , 12:30 pm',
        'status': 'done',
      },
      {
        'title': 'Order Processing',
        'time': '10/02/2025 , 12:31 pm',
        'status': 'in_progress',
      },
      {
        'title': 'Out of Delivery',
        'time': '10/02/2025 , 12:35 pm',
        'status': 'pending',
      },
      {
        'title': 'Delivered',
        'time': '10/02/2025 , 12:40 pm',
        'status': 'pending',
      },
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Order History',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          ...List.generate(orderSteps.length, (index) {
            final step = orderSteps[index];
            final isLast = index == orderSteps.length - 1;
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Timeline dot and line
                Column(
                  children: [
                    Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: step['status'] == 'done'
                            ? Colors.green
                            : step['status'] == 'in_progress'
                                ? Colors.orange
                                : Colors.grey,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                    ),
                    if (!isLast)
                      Container(
                        width: 2,
                        height: 40,
                        color: Colors.grey.shade400,
                      ),
                  ],
                ),
                const SizedBox(width: 12),
                // Title and time
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        step['title'],
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        step['time'],
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
