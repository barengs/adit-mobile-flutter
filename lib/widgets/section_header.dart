import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String? title;
  final Widget? icon;

  const SectionHeader({super.key, this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Color.fromRGBO(196, 196, 196, 0.42), width: 3),
          bottom: BorderSide(
            color: Color.fromRGBO(196, 196, 196, 0.42),
            width: 3,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 31.77,
            height: 31,
            decoration: BoxDecoration(
              color: colors.primary,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(8),
            child: icon,
          ),
          const SizedBox(width: 8),
          Text(
            title ?? 'Test title',
            style: const TextStyle(
              fontSize: 16,
              fontFamily: 'Sarabun',
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
