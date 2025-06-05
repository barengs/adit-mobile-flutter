import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:siakad/widgets/custom_header.dart';
import 'package:siakad/widgets/content_container.dart';
import 'package:siakad/widgets/tugas_card.dart';
import 'package:siakad/widgets/section_header.dart';
import 'package:siakad/widgets/daftar_mata_kuliah_card.dart';

class ELearningDashboard extends StatefulWidget {
  const ELearningDashboard({super.key});

  @override
  State<ELearningDashboard> createState() => _ELearningDashboardState();
}

class _ELearningDashboardState extends State<ELearningDashboard> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colors.primary,
      body: Column(
        children: [
          const CustomHeader(title: 'Elearning'),
          Expanded(
            child: ContentContainer(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: TugasCard(
                      tenggatWaktu: '1',
                      mataKuliah: 'Rekayasa web praktik',
                    ),
                  ),

                  SizedBox(height: 20),

                  SectionHeader(
                    title: 'Daftar Matakuliah',
                    icon: SvgPicture.asset('assets/svg/chrome_reader_mode.svg'),
                  ),

                  const SizedBox(height: 5),

                  //*
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      itemCount: 10, // Ganti dengan jumlah data yang sebenarnya
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: DaftarMataKuliahCard(
                            imageUrl: 'i',
                            title: 'Sistem informasi ${index + 1}',
                            description: 'yayyasetuuju',
                            presentase: 50 + (index * 5),
                          ),
                        );
                      },
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
