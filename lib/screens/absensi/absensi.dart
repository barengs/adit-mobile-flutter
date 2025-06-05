import 'package:flutter/material.dart';
import 'package:siakad/widgets/custom_header.dart';
import 'package:siakad/widgets/content_container.dart';
import 'package:siakad/widgets/absensi_card.dart';

class Absensi extends StatefulWidget {
  const Absensi({super.key});

  @override
  State<Absensi> createState() => _AbsensiState();
}

class _AbsensiState extends State<Absensi> {
  final List<Map<String, String>> absensiData = [
    {
      "title": "Testing dan Implementasi",
      "detail": "Selasa, 08:50 - 10:30 WIB (K-1 H.21)",
    },
    {
      "title": "Rekayasa Web Praktik",
      "detail": "Rabu, 10:30 - 12:10 WIB (K-2 H.15)",
    },
    {
      "title": "Basis Data Lanjut",
      "detail": "Kamis, 13:30 - 15:10 WIB (K-1 H.12)",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colors.primary,
      body: Column(
        children: [
          CustomHeader(title: 'Absensi'),
          Expanded(
            child: ContentContainer(
              child: ListView.builder(
                physics: const ClampingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: absensiData.length,
                itemBuilder: (context, index) {
                  return AbsensiCard(
                    isRounded: index == 0,
                    mataKuliah: absensiData[index]['title']!,
                    waktu: absensiData[index]['detail']!,
                    presentase: 70,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
