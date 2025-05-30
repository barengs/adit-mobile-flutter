import 'package:flutter/material.dart';
import 'package:siakad/widgets/section_header.dart';
import 'package:siakad/widgets/jadwal_kuliah_card.dart';

class ExpandableJadwalSection extends StatefulWidget {
  final String title;
  final List<JadwalKuliahCard> jadwalList;

  const ExpandableJadwalSection({
    super.key,
    required this.title,
    required this.jadwalList,
  });

  @override
  State<ExpandableJadwalSection> createState() =>
      _ExpandableJadwalSectionState();
}

class _ExpandableJadwalSectionState extends State<ExpandableJadwalSection> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Klik bagian header ini untuk tampil/sembunyi
        GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: SectionHeader(title: widget.title),
        ),

        // Daftar Jadwal yang muncul saat isExpanded = true
        if (isExpanded)
          Column(
            children:
                widget.jadwalList
                    .map(
                      (card) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: card,
                      ),
                    )
                    .toList(),
          ),
      ],
    );
  }
}
