import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MatkulTaskCard extends StatelessWidget {
  final String mataKuliah;
  final String waktu;

  const MatkulTaskCard({
    super.key,
    required this.mataKuliah,
    required this.waktu,
  });
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      height: 67,
      decoration: BoxDecoration(
        color: Color.fromRGBO(196, 196, 196, 0.2),
        borderRadius: BorderRadius.circular(33.5),
      ),
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: colors.primary,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset(
              'assets/svg/chrome_reader_mode.svg',
              // width: 30,
              // height: 29,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                mataKuliah,
                style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 10, height: 3),
              Text(
                waktu,
                style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(85, 85, 85, 0.58),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
