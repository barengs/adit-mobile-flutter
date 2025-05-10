import 'package:flutter/material.dart';
import 'package:siakad/constant/app_colors.dart';
import 'package:siakad/widgets/aktivitas_card.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({super.key});

  final String imagePath = 'assets/images/maxresdefault.jpg';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              imagePath,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder:
                  (context, error, stackTrace) =>
                      const Text('Gambar tidak ditemukan!'),
            ),
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          'Harvard Kampus 1',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Sarabun',
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          'Jl. Siliwangi (Ringroad Utara) Jombor Sleman D.I Yogyakarta',
          style: TextStyle(
            fontSize: 10.0,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: 54,
          height: 5,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(height: 10),
        AktivitasCard()
      ],
    );
  }
}
