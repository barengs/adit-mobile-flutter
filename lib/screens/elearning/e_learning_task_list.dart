import 'package:flutter/material.dart';
import 'package:siakad/widgets/custom_header.dart';
import 'package:siakad/widgets/content_container.dart';
import 'package:siakad/widgets/matkul_task_card.dart';

class ELearningTaskList extends StatefulWidget {
  const ELearningTaskList({super.key});

  @override
  State<ELearningTaskList> createState() => _ELearningTaskListState();
}

class _ELearningTaskListState extends State<ELearningTaskList> {
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
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: MatkulTaskCard(mataKuliah: 'Web programing', waktu: 'Selasa, 08:50 - 10:30 WIB (K-1 H.21)'),
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
