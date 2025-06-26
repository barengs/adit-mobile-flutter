import 'package:flutter/material.dart';

class StatusPengumpulan extends StatelessWidget {
  const StatusPengumpulan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0x38d1d1d1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InfoRow(label: 'Status Pengumpulan', value: 'Sukses'),
          InfoRow(label: 'Status Penilaian', value: '100%', highlight: true),
          InfoRow(label: 'Sisa Waktu', value: '1 hari lagi'),
          InfoRow(label: 'Perubahan', value: '-', highlight: true),
          InfoRow(
            label: 'Dokumen',
            valueWidget: Transform.translate(
              offset: const Offset(-45, 0),
              child: Image.asset(
                'assets/images/word.png',
                width: 20,
                height: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final String label;
  final String? value;
  final Widget? valueWidget;
  final bool highlight;

  const InfoRow({
    super.key,
    required this.label,
    this.value,
    this.valueWidget,
    this.highlight = false,
  });

  @override
  Widget build(BuildContext context) {
    final content =
        valueWidget ??
        Text(
          value ?? '',
          style: TextStyle(
            fontWeight: highlight ? FontWeight.bold : FontWeight.normal,
            fontSize: 14,
          ),
        );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 170,
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
            decoration:
                highlight
                    ? BoxDecoration(
                      color: const Color(0x1A6b6b6b),
                      borderRadius: BorderRadius.circular(4),
                    )
                    : null,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(child: content),
        ],
      ),
    );
  }
}
