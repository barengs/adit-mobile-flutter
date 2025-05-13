import 'package:flutter/material.dart';
import 'package:siakad/constant/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JadwalKuliahCard extends StatelessWidget {
  final int tanggal;
  final String hari;
  final String mataKuliah;
  final String deskripsi;
  final String jamMulai;
  final String jamSelesai;
  final String lokasi;

  const JadwalKuliahCard({
    super.key,
    required this.tanggal,
    required this.hari,
    required this.mataKuliah,
    required this.deskripsi,
    required this.jamMulai,
    required this.jamSelesai,
    required this.lokasi,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Tanggal dan Hari
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Tanggal Bulat
            Container(
              width: 31,
              height: 31,
              decoration: BoxDecoration(
                color: AppColors.accent,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(
                '$tanggal',
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Sarabun',
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(width: 10),
            // Hari
            Text(
              hari,
              style: const TextStyle(
                fontFamily: 'Sarabun',
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),

        // Custom Card
        Stack(
          children: [
            Positioned(
              left: 65,
              top: 0,
              bottom: 0,
              child: Container(width: 3, color: AppColors.accent),
            ),
            // Konten Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(229, 229, 229, 0.4),
                borderRadius: BorderRadius.circular(17),
                border: Border.all(
                  color: const Color.fromRGBO(196, 196, 196, 0.42),
                  width: 1,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Waktu
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        jamMulai,
                        style: const TextStyle(
                          fontFamily: 'Sarabun',
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      SvgPicture.asset(
                        'assets/svg/arrow_downward.svg',
                        width: 13,
                        height: 13,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        jamSelesai,
                        style: const TextStyle(
                          fontFamily: 'Sarabun',
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 32),

                  // Detail Mata Kuliah
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          mataKuliah,
                          style: const TextStyle(
                            fontFamily: 'Sarabun',
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          deskripsi,
                          style: const TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w300,
                            fontSize: 11,
                            color: Color.fromRGBO(107, 107, 107, 0.9),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: AppColors.accent,
                              size: 16,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              lokasi,
                              style: const TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: Color.fromRGBO(101, 101, 101, 0.96),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Status Icon
                  Transform.translate(
                    offset: const Offset(5, 0),
                    child: SvgPicture.asset(
                      'assets/svg/radio_button_checked.svg',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
