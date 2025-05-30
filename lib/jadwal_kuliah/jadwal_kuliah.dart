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

  final List<Map<String, dynamic>> jadwalPerHari = [
    {
      'hari': 'Senin',
      'mataKuliah': [
        {
          'mataKuliah': 'Matematika Diskrit',
          'deskripsi': 'Materi logika matematika',
          'jamMulai': '08:00',
          'jamSelesai': '10:30',
          'lokasi': 'D.1.1',
        },
      ],
    },
    {
      'hari': 'Selasa',
      'mataKuliah': [
        {
          'mataKuliah': 'Rekayasa Web',
          'deskripsi': 'Mata kuliah praktik',
          'jamMulai': '09:40',
          'jamSelesai': '12:10',
          'lokasi': 'E.3.3',
        },
        {
          'mataKuliah': 'Algoritma',
          'deskripsi': 'Teori dan dasar algoritma',
          'jamMulai': '13:00',
          'jamSelesai': '15:00',
          'lokasi': 'E.1.1',
        },
      ],
    },
    {
      'hari': 'Rabu',
      'mataKuliah': [
        {
          'mataKuliah': 'Pemrograman Mobile',
          'deskripsi': 'Flutter',
          'jamMulai': '10:00',
          'jamSelesai': '12:00',
          'lokasi': 'Lab Komputer',
        },
      ],
    },
    {
      'hari': 'Kamis',
      'mataKuliah': [
        {
          'mataKuliah': 'Jaringan Komputer',
          'deskripsi': 'Dasar jaringan',
          'jamMulai': '08:00',
          'jamSelesai': '10:00',
          'lokasi': 'D.2.3',
        },
      ],
    },
    {
      'hari': 'Jumat',
      'mataKuliah': [
        {
          'mataKuliah': 'Sistem Operasi',
          'deskripsi': 'Manajemen proses dan memori',
          'jamMulai': '13:00',
          'jamSelesai': '15:30',
          'lokasi': 'D.3.2',
        },
      ],
    },
    {
      'hari': 'Sabtu',
      'mataKuliah': [
        {
          'mataKuliah': 'Etika Profesi',
          'deskripsi': 'Etika dalam dunia kerja IT',
          'jamMulai': '09:00',
          'jamSelesai': '11:00',
          'lokasi': 'Aula Utama',
        },
      ],
    },
  ];

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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: JadwalKuliahHeader(tanggal: 12, hari: 'Rabu'),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: JadwalKuliahCard(
                      showHeader: false,
                      mataKuliah: 'Rekayasa Web Praktik',
                      deskripsi: 'Mata kuliah praktik',
                      jamMulai: '09:40',
                      jamSelesai: '12:10',
                      lokasi: 'E.3.3',
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Klikable header
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
                          top: BorderSide(
                            color: Color.fromRGBO(196, 196, 196, 0.42),
                            width: 3,
                          ),
                          bottom: BorderSide(
                            color: Color.fromRGBO(196, 196, 196, 0.42),
                            width: 3,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 31.77,
                            height: 31,
                            decoration: BoxDecoration(
                              color: AppColors.accent,
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
                            showJadwalLain
                                ? Icons.keyboard_arrow_down_outlined
                                : Icons.chevron_right_outlined,
                            color:
                                showJadwalLain
                                    ? Colors
                                        .grey
                                    : AppColors
                                        .accent,
                              size: 25,
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Jadwal kuliah pada hari lainnya
                  if (showJadwalLain)
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children:
                              jadwalPerHari.map((hariData) {
                                final hari = hariData['hari'] as String;
                                final matkulList =
                                    hariData['mataKuliah'] as List<dynamic>;

                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 6,
                                  ),
                                  child: Column(
                                    children: List.generate(matkulList.length, (
                                      index,
                                    ) {
                                      final matkul = matkulList[index];
                                      return JadwalKuliahCard(
                                        hari: index == 0 ? hari : null,
                                        jumlahMatahKuliah:
                                            index == 0
                                                ? '${matkulList.length}'
                                                : null,
                                        mataKuliah: matkul['mataKuliah'],
                                        deskripsi: matkul['deskripsi'],
                                        jamMulai: matkul['jamMulai'],
                                        jamSelesai: matkul['jamSelesai'],
                                        lokasi: matkul['lokasi'],
                                        isVisible: false,
                                        showHeader: index == 0,
                                      );
                                    }),
                                  ),
                                );
                              }).toList(),
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
