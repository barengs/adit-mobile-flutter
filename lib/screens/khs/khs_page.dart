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
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
