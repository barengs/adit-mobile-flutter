
import 'package:flutter/material.dart';




class TugasKelompok extends StatelessWidget {
  const TugasKelompok({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      width: double.infinity,
      
      decoration: BoxDecoration(color: const Color(0x33C4C4C4)),
      child: Padding(
        padding: const EdgeInsets.only( left: 26, right: 26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric( vertical: 8),
               child: Row(
                children: [
                  const Text(
                    'Tugas Kelompok',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Image.asset('assets/images/centang.png', width: 20, height: 20),
                ],
              ),
            ),
            const SizedBox(height: 17),
            const Text(
              'Ini adalah penjelasan tambahan di bawah judul Tugas Kelompok pakai api',
               style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto',
                  ),
            ),
            const SizedBox(height: 17),
            Row(children: [
              const Text(
                'Download Materi',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                ),
              ),
              const SizedBox(width: 8),
              Image.asset('assets/images/download.png', width: 8, height: 10),
            ],),
            const SizedBox(height: 27),
            Row (children:[
              const Text(
                'Dimulai:',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto',
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                'Tanggal mulai dari Api',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                ),
              ),
              
            ]),
            const SizedBox(height: 5),
            Row (children:[
              const Text(
                'Berakhir:',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto',
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                'Tanggal berakhir dari Api',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                ),
              ),
            ]),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
