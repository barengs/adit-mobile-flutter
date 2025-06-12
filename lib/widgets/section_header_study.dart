import 'package:flutter/material.dart';

class SectionHeaderStudy extends StatelessWidget {
  final String headerTitle;
  const SectionHeaderStudy({super.key, required this.headerTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Color.fromRGBO(229, 229, 229, 0.75),
            width: 3,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Transform.translate(
          offset: Offset(0, -4),
          child: Text(
            'Detail $headerTitle',
            style: const TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Color.fromRGBO(0, 0, 0, 0.75),
            ),
          ),
        ),
      ),
    );
  }
}
