import 'package:flutter/material.dart';
import 'package:siakad/widgets/custom_header.dart';
import 'package:siakad/widgets/content_container.dart';
import 'package:siakad/widgets/tugas_card.dart';

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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
