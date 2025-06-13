import 'package:flutter/material.dart';
import 'package:siakad/widgets/content_container.dart';
import 'package:siakad/widgets/custom_header.dart';
import 'package:siakad/widgets/section_header_study.dart';
import 'package:siakad/widgets/switch_button.dart';

class KhsPage extends StatefulWidget {
  const KhsPage({super.key});

  @override
  State<KhsPage> createState() => _KhsPageState();
}

class _KhsPageState extends State<KhsPage> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colors.primary,
      body: Column(
        children: [
          CustomHeader(title: 'KHS'),
          Expanded(
            child: ContentContainer(
              child: Column(
                children: [
                  SectionHeaderStudy(headerTitle: 'kartu hasil studi'),
                  const SizedBox(height: 12),

                  // *Switch Menu
                  SwitchButton(
                    activeIndex: activeIndex,
                    activeColor: colors.secondary,
                    inactiveColor: Colors.transparent,
                    onChanged: (index) {
                      setState(() {
                        activeIndex = index;
                      });
                    },
                    items: [
                      SwitchItem(icon: Icons.list),
                      SwitchItem(icon: Icons.table_chart_rounded),
                      SwitchItem(icon: Icons.auto_graph),
                    ],
                  ),
                  SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Kolom Tahun Ajaran
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Tahun Ajaran',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(0, 0, 0, 0.75),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Container(
                              width: 232,
                              height: 44,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(229, 229, 229, 0.75),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              alignment: Alignment.centerRight,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              child: Text(
                                '2021/2022',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0, 0, 0, 0.75),
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(width: 16),

                        // Kolom Semester
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Semester',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(0, 0, 0, 0.75),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Container(
                              width: 126,
                              height: 44,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(229, 229, 229, 0.75),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              alignment: Alignment.centerRight,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              child: Text(
                                'Ganjil',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0, 0, 0, 0.75),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
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
