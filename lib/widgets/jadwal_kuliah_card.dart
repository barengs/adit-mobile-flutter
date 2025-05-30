import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:siakad/constant/app_colors.dart';

class JadwalKuliahCard extends StatelessWidget {
  final String mataKuliah;
  final String deskripsi;
  final String jamMulai;
  final String jamSelesai;
  final String lokasi;
  final bool isVisible;

  // ini untuk judul hari mata kuliah dan jumlah mata kuliah
  final bool showHeader;
  final String? hari;
  final String? jumlahMatahKuliah;

  const JadwalKuliahCard({
    super.key,
    required this.mataKuliah,
    required this.deskripsi,
    required this.jamMulai,
    required this.jamSelesai,
    required this.lokasi,
    this.hari,
    this.jumlahMatahKuliah,
    this.isVisible = true,
    this.showHeader = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Hari & Jumlah mata kuliah
          Visibility(
            visible: showHeader,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ), // atur seberapa tengah
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        hari ?? '',
                        style: const TextStyle(
                          fontFamily: 'Sarabun',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '$jumlahMatahKuliah MATA KULIAH',
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(107, 107, 107, 0.9),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
              ],
            ),
          ),

          const SizedBox(height: 4),

          // Mata Kuliah Card
          Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: const EdgeInsets.only(left: 65),
                  width: 3,
                  height: 90,
                  color: AppColors.accent,
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
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
                    // Waktu Kuliah
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(jamMulai, style: _timeStyle()),
                        const SizedBox(height: 8),
                        SvgPicture.asset(
                          'assets/svg/arrow_downward.svg',
                          width: 13,
                        ),
                        const SizedBox(height: 8),
                        Text(jamSelesai, style: _timeStyle()),
                      ],
                    ),
                    const SizedBox(width: 32),

                    // Detail Kuliah
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(mataKuliah, style: _titleStyle()),
                          const SizedBox(height: 5),
                          Text(deskripsi, style: _descStyle()),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: AppColors.accent,
                                size: 16,
                              ),
                              const SizedBox(width: 2),
                              Text(lokasi, style: _lokasiStyle()),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Status Icon
                    Visibility(
                      visible: isVisible,
                      child: Transform.translate(
                        offset: const Offset(5, 0),
                        child: SvgPicture.asset(
                          'assets/svg/radio_button_checked.svg',
                          width: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// STYLE HELPERS
TextStyle _timeStyle() => const TextStyle(
  fontFamily: 'Sarabun',
  fontWeight: FontWeight.w600,
  fontSize: 13,
  color: Colors.black,
);

TextStyle _titleStyle() => const TextStyle(
  fontFamily: 'Sarabun',
  fontWeight: FontWeight.w600,
  fontSize: 14,
  color: Colors.black,
);

TextStyle _descStyle() => const TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w300,
  fontSize: 11,
  color: Color.fromRGBO(107, 107, 107, 0.9),
);

TextStyle _lokasiStyle() => const TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
  fontSize: 13,
  color: Color.fromRGBO(101, 101, 101, 0.96),
);
