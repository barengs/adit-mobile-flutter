import 'package:flutter/material.dart';
import 'package:siakad/widgets/custom_header.dart';
import 'package:siakad/widgets/content_container.dart';
import 'package:siakad/widgets/matkul_task_card.dart';
import 'package:siakad/widgets/tasks_list_card.dart';
import 'package:siakad/screens/elearning/place_holder_page.dart';

class ELearningTaskList extends StatefulWidget {
  const ELearningTaskList({super.key});

  @override
  State<ELearningTaskList> createState() => _ELearningTaskListState();
}

class _ELearningTaskListState extends State<ELearningTaskList> {
  final List<String> taskTitles = [
    'Kerja Kelompok',
    'Tugas Individu',
    'Presentasi Proyek',
    'Quiz Online',
    'Presentasi Online',
  ];

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
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: MatkulTaskCard(
                        mataKuliah: 'Web Programming',
                        waktu: 'Selasa, 08:50 - 10:30 WIB (K-1 H.21)',
                      ),
                    ),
                    const SizedBox(height: 10),
                    ...taskTitles.asMap().entries.map((entry) {
                      final index = entry.key;
                      final title = entry.value;
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: TasksListCard(
                          serialNumber: index + 1,
                          taskTitle: title,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PlaceholderPage(),
                              ),
                            );
                          },
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
