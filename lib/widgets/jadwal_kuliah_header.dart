import 'package:flutter/material.dart';

class JadwalKuliahHeader extends StatelessWidget {
  final int tanggal;
  final String hari;

  const JadwalKuliahHeader({
    super.key,
    required this.tanggal,
    required this.hari,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 31,
          height: 31,
          decoration: BoxDecoration(
            color: colors.secondary,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Text(
            '$tanggal',
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Sarabun',
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          hari,
          style: const TextStyle(
            fontFamily: 'Sarabun',
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
