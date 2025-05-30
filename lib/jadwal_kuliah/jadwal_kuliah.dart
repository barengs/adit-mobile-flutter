import 'package:flutter/material.dart';
import 'package:siakad/widgets/custom_header.dart';
import 'package:siakad/widgets/content_container.dart';
import 'package:siakad/constant/app_colors.dart';
import 'package:siakad/widgets/jadwal_kuliah_card.dart';
import 'package:siakad/widgets/jadwal_kuliah_header.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JadwalKuliah extends StatefulWidget {
  const JadwalKuliah({super.key});

  @override
  State<JadwalKuliah> createState() => _JadwalKuliahState();
}

class _JadwalKuliahState extends State<JadwalKuliah> {
  bool showJadwalLain = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        children: [
          const CustomHeader(title: 'Jadwal Kuliah'),
          Expanded(
            child: ContentContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 18),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: const JadwalKuliahHeader(tanggal: 12, hari: 'Rabu'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: const JadwalKuliahCard(
                      showHeader: false,
                      mataKuliah: 'Rekayasa Web Praktik',
                      deskripsi: 'Mata kuliah praktik',
                      jamMulai: '09:40',
                      jamSelesai: '12:10',
                      lokasi: 'E.3.3',
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Bagian header yang bisa diklik
                  InkWell(
                    onTap: () {
                      setState(() {
                        showJadwalLain = !showJadwalLain;
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          top: BorderSide(color: Color.fromRGBO(196, 196, 196, 0.42), width: 3),
                          bottom: BorderSide(color: Color.fromRGBO(196, 196, 196, 0.42), width: 3),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 31.77,
                            height: 31,
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(8),
                            child: SvgPicture.asset('assets/svg/calendar.svg'),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Jadwal kuliah saya',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Sarabun',
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          const Spacer(),
                          Icon(
                            showJadwalLain ? Icons.keyboard_arrow_down : Icons.arrow_forward,
                            color: AppColors.primary,
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  if (showJadwalLain)
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: JadwalKuliahCard(
                                hari: 'Senin',
                                jumlahMatahKuliah: '1',
                                mataKuliah: 'Rekayasa Web Praktik',
                                deskripsi: 'Mata kuliah praktik',
                                jamMulai: '09:40',
                                jamSelesai: '12:10',
                                lokasi: 'E.3.3',
                                isVisible: false,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: Column(
                                children: [
                                  JadwalKuliahCard(
                                    hari: 'Selasa',
                                    jumlahMatahKuliah: '2',
                                    mataKuliah: 'Rekayasa Web Praktik',
                                    deskripsi: 'Mata kuliah praktik',
                                    jamMulai: '09:40',
                                    jamSelesai: '12:10',
                                    lokasi: 'E.3.3',
                                    isVisible: false,
                                  ),
                                  JadwalKuliahCard(
                                    showHeader: false,
                                    mataKuliah: 'Rekayasa Web Praktik',
                                    deskripsi: 'Mata kuliah praktik',
                                    jamMulai: '09:40',
                                    jamSelesai: '12:10',
                                    lokasi: 'E.3.3',
                                    isVisible: false,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: JadwalKuliahCard(
                                hari: 'Rabu',
                                jumlahMatahKuliah: '1',
                                mataKuliah: 'Rekayasa Web Praktik',
                                deskripsi: 'Mata kuliah praktik',
                                jamMulai: '09:40',
                                jamSelesai: '12:10',
                                lokasi: 'E.3.3',
                                isVisible: false,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: JadwalKuliahCard(
                                hari: 'Kamis',
                                jumlahMatahKuliah: '1',
                                mataKuliah: 'Rekayasa Web Praktik',
                                deskripsi: 'Mata kuliah praktik',
                                jamMulai: '09:40',
                                jamSelesai: '12:10',
                                lokasi: 'E.3.3',
                                isVisible: false,
                              ),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
