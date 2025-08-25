import 'package:flutter/material.dart';
import 'package:supermarketadmin/core/themes/app_assets.dart';
import 'package:supermarketadmin/core/themes/app_colors.dart';
import 'package:supermarketadmin/core/utils/navigations.dart';
import 'package:supermarketadmin/views/menu/customer_management/customers.dart';
import 'package:supermarketadmin/views/menu/customer_management/tickets.dart';
class CustomerManagementScreen extends StatefulWidget {
  const CustomerManagementScreen({super.key});

  @override
  State<CustomerManagementScreen> createState() =>
      _CustomerManagementScreenState();
}

class _CustomerManagementScreenState extends State<CustomerManagementScreen> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgGrey,
      appBar: AppBar(
        backgroundColor: const Color(0xFF27AE60),
        toolbarHeight: 70,
        title: const Text(
          "Customer Management",
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  buildTabButton('Customers', 0),
                  buildTabButton('Tickets', 1),
                ],
              ),
            ),
          ),
          Expanded(
            child: selectedTabIndex == 0
                ? const CustomerSection()
                : const TicketSection(),
          )
        ],
      ),
    );
  }

  Widget buildTabButton(String title, int index) {
    final isSelected = selectedTabIndex == index;
    return Expanded(
      child: GestureDetector(
        onTap: () => setState(() => selectedTabIndex = index),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isSelected ? AppColors.green25Opacity : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: isSelected ? AppColors.green : AppColors.grey,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTicketsList() {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      children: const [
        TicketCard(
            ticketId: '#101', date: '2023-10-01', title: 'John Doe / Order'),
        TicketCard(
            ticketId: '#111', date: '2023-10-01', title: 'Alan John / Payment'),
      ],
    );
  }
}

class TicketCard extends StatelessWidget {
  final String ticketId;
  final String date;
  final String title;

  const TicketCard(
      {super.key,
      required this.ticketId,
      required this.date,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const CircleAvatar(child: Icon(Icons.help_outline)),
        title: Text('$ticketId $date'),
        subtitle: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
