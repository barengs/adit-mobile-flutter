import 'package:flutter/material.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({super.key});

  final String imagePath = 'assets/images/istockphoto-1393542225-170667a.jpg'; // Path relatif ke asset

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue, // Warna border
              width: 2.0,       // Ketebalan border
            ),
            borderRadius: BorderRadius.circular(12), // Radius yang sama dengan ClipRRect agar border ikut melengkung
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const Text('Gambar tidak ditemukan!'),
            ),
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