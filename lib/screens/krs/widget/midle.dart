import 'package:flutter/material.dart';

class Midle extends StatelessWidget {
  const Midle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/detail.png', width: 27, height: 30),

              const SizedBox(width: 8),
              const Text('Detail kartu rencana studi'),
              Expanded(
                child: Container(
                  margin:EdgeInsets.only(right:26),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("4 mk", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(color: Color(0XFFE5E5E5), thickness: 3, indent: 61),
        Padding(
          padding: EdgeInsets.only(left: 26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/i2.png', width: 27, height: 30),

              const SizedBox(width: 8),
              const Text('Jumlah SKS'),
              Expanded(
                child: Container(
                  margin:EdgeInsets.only(right:26),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("9 sks", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(color: Color(0XFFE5E5E5), thickness: 3, indent: 61),
        Padding(
          padding: EdgeInsets.only(left: 26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/i3.png', width: 27, height: 30),

              const SizedBox(width: 8),
              const Text('Tahun Ajaran'),
              Expanded(
                child: Container(
                  margin:EdgeInsets.only(right:26),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("2024/2025", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(color: Color(0XFFE5E5E5), thickness: 3, indent: 61),
        Padding(
          padding: EdgeInsets.only(left: 26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/i4.png', width: 27, height: 30),

              const SizedBox(width: 8),
              const Text('Semester'),
              Expanded(
                child: Container(
                  margin:EdgeInsets.only(right:26),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("Ganjil", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height:12),
        Divider(color: Color(0XFFE5E5E5), thickness: 8),
      ],
    );
  }
}
