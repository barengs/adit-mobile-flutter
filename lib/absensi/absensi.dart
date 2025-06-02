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
      "title": "Absensi 1",
      "detail": "Detail absensi akan ditampilkan di sini.",
    },
    {
      "title": "Absensi 2",
      "detail": "Detail absensi akan ditampilkan di sini.",
    },
    {
      "title": "Absensi 3",
      "detail": "Detail absensi akan ditampilkan di sini.",
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
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: index == absensiData.length - 1 ? 0 : 20),
                    child: AbsensiCard(
                      isRounded: index == 0,
                      // mataKuliah: absensiData[index]['title']!,
                      // waktu: absensiData[index]['detail']!,
                    ),
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
