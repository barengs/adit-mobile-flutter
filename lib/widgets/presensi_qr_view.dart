import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PresensiQRView extends StatelessWidget {
  const PresensiQRView({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      children: [
        const Text(
          'Arahkan kamera ke QR Code untuk presensi',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            fontSize: 11,
            color: Color.fromRGBO(107, 107, 107, 1.0),
          ),
        ),
        const SizedBox(height: 12),
        Container(
          width: MediaQuery.of(context).size.width - 30,
          height: 417,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(31),
          ),
          alignment: Alignment.center,
          child: Stack(
            children: [
              Positioned(
                top: 16,
                right: 16,
                // Tombol untuk menyalakan flash
                child: Container(
                  width: 31,
                  height: 31,
                  decoration: BoxDecoration(
                    color: colors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    'assets/svg/flash.svg',
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              // Tambahkan QR view di tengah kalau ada
              Center(
                child: Text(
                  '📷 QR View di sini',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
