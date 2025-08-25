import 'package:flutter/material.dart';

class ProdTiles extends StatelessWidget {
  const ProdTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildActionButton(Icons.add, 'Add Product'),
          const SizedBox(width: 10),
          buildActionButton(Icons.delivery_dining, 'Assign Delivery'),
          const SizedBox(width: 10),
          buildActionButton(Icons.category, 'Manage Category'),
        ],
      ),
    );
  }
}

Widget buildActionButton(IconData icon, String label) {
  return ElevatedButton.icon(
    onPressed: () {},
    icon: Icon(icon, size: 18),
    label: Text(label, style: const TextStyle(fontSize: 12)),
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 2,
    ),
  );
}
