import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TugasCard extends StatelessWidget {
  final String tenggatWaktu;
  final String mataKuliah;

  const TugasCard({
    super.key,
    required this.tenggatWaktu,
    required this.mataKuliah,
  });

  @override
  Widget build(BuildContext context) {
    // inal colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Mata Kuliah Card
          Stack(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(45, 186, 177, 0.5),
                  borderRadius: BorderRadius.circular(17),
                  border: Border.all(
                    color: const Color.fromRGBO(45, 186, 177, 0.72),
                    width: 2,
                  ),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(45, 186, 177, 0.72),
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(0, 171, 160, 1.0),
                              shape: BoxShape.circle,
                            ),
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: SvgPicture.asset(
                                'assets/svg/warning.svg',
                                width: 30,
                                height: 30,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Tenggat waktu: $tenggatWaktu hari lagi',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 123, 115, 1.0),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              mataKuliah,
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.75),
                                fontFamily: 'Sarabun',
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      right: -9,
                      top: 0,
                      child: SvgPicture.asset(
                        'assets/svg/radio_button_checked.svg',
                        width: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
