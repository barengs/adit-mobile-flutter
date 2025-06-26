import 'package:flutter/material.dart';

void main() {
  runApp(const BoxHeader());
}


class BoxHeader extends StatelessWidget {
  const BoxHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only( left:10),
      width: 340,
      height: 67,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(33.5),
        color: const Color(0x33C4C4C4),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, ),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/images/testing.png', width: 55, height: 55),
                Image.asset(
                  'assets/images/testing1.png',
                  width: 30,
                  height: 29,
                ),
              ],
            ),
            const SizedBox(width: 12),
            const Text(
              'Testing dan Implementasi',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

