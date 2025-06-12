import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:siakad/screens/absensi/absensi.dart';
import 'package:siakad/screens/jadwal_kuliah/jadwal_kuliah.dart';
import 'package:siakad/screens/elearning/e_learning_dashboard.dart';
import 'package:siakad/screens/khs/khs_page.dart';
import 'package:siakad/screens/not_found/not_found_page.dart';

class AktivitasCard extends StatelessWidget {
  const AktivitasCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
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
              const Text(
                'Aktivitas',
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Sarabun',
                ),
              ),
            ],
          ),
        ),

        // Card Aktivitas
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0x33C4C4C4),
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
                    final title = item['title'] as String;
                    return GestureDetector(
                      onTap: () {
                        switch (title) {
                          // * Navigasi ke halaman Jadwal
                          case 'Jadwal':
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => JadwalKuliah(),
                              ),
                            );
                          // * Navigasi ke halaman Absensi
                          case 'Presensi':
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Absensi(),
                              ),
                            );
                            break;
                          // * Navigasi ke halaman Elearning
                          case 'Elearning':
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (context) => const ELearningDashboard(),
                              ),
                            );
                          // * Navigasi ke halaman KHS
                          case 'KHS':
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const KhsPage(),
                              ),
                            );
                            break;
                          default:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const NotFoundPage(),
                              ),
                            );
                        }
                      },
                      child: Container(
                        width: 60,
                        margin: const EdgeInsets.only(right: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: colors.secondary,
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
                                title,
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
