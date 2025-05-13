import 'package:flutter/material.dart';
import 'package:siakad/constant/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AktivitasCard extends StatelessWidget {
  const AktivitasCard({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {'icon': 'assets/svg/jadwal.svg', 'title': 'Jadwal'},
      {'icon': 'assets/svg/presensi.svg', 'title': 'Presensi'},
      {'icon': 'assets/svg/krs.svg', 'title': 'KRS'},
      {'icon': 'assets/svg/khs.svg', 'title': 'KHS'},
      {'icon': 'assets/svg/elearning.svg', 'title': 'Elearning'},
      {'icon': Icons.account_balance_wallet_rounded, 'title': 'Keuangan'},
      {'icon': 'assets/svg/ta.svg', 'title': 'TA'},
      {'icon': Icons.list_alt_outlined, 'title': 'Kegiatan'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Bagian Header
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Text Aktivitas
              const Text(
                'Aktivitas',
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Sarabun',
                ),
              ),
              // Tombol Lihat Semuanya
              GestureDetector(
                onTap: () {
                  Text('oke');
                },
                child: Row(
                  children: const [
                    Text(
                      'Lihat Semuanya',
                      style: TextStyle(
                        color: Color(0xFFC4C4C4),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Sarabun',
                      ),
                    ),
                    SizedBox(width: 5),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Card Aktivitas
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.boxGray,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
                  items.map((item) {
                    final icon = item['icon'];
                    return Container(
                      width: 60,
                      margin: const EdgeInsets.only(right: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.accent,
                            ),
                            child: Center(
                              child:
                                  icon is IconData
                                      ? Icon(
                                        icon,
                                        color: Colors.white,
                                        size: 35,
                                      )
                                      : SvgPicture.asset(
                                        icon as String,
                                        width: 35,
                                        height: 35,
                                        colorFilter: const ColorFilter.mode(
                                          Colors.white,
                                          BlendMode.srcIn,
                                        ),
                                      ),
                            ),
                          ),
                          const SizedBox(height: 6),
                          FittedBox(
                            child: Text(
                              item['title'] as String,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Color(0xBF000000),
                                fontSize: 11,
                                fontFamily: 'Sarabun',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
