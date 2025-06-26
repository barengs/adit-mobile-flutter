import 'package:flutter/material.dart';
import 'statusPengumpulan.dart';
import 'button.dart';
import 'Upload.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Color(0xFFF6F6F6), // warna background khusus
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleSection(),
          const SizedBox(height: 10),
          StatusPengumpulan(),
          const SizedBox(height: 10),
          TambahFile(),
        ],
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(),
      child: Text(
        'Status Pengumpulan',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    );
  }
}

class UploadSection extends StatelessWidget {
  const UploadSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Color(0xFFF6F6F6), // warna background khusus
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleSection(),
          const SizedBox(height: 10),
          Upload(),
          const SizedBox(height: 10),
          Transform.translate(
            offset: Offset(0, 0), 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Simpan(),
                const SizedBox(width: 10),
                const Batal(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
