import 'package:flutter/material.dart';

class AbsensiCard extends StatelessWidget {
  final bool isRounded;

  const AbsensiCard({
    super.key,
    required this.isRounded,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      height: 364, // tetap sesuai desain UI/UX
      decoration: BoxDecoration(
        color: const Color.fromRGBO(246, 246, 246, 1.0),
        borderRadius: isRounded
            ? const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )
            : BorderRadius.zero,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          // Tambahkan konten lain sesuai desain
        ],
      ),
    );
  }
}
