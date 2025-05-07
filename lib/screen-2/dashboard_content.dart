import 'package:flutter/material.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          'Harvard Kampus 1',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
