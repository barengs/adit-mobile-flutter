import 'package:flutter/material.dart';
import 'package:siakad/widgets/presensi_qr_view.dart';

class Presensi extends StatelessWidget {
  const Presensi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [PresensiQRView()],
        ),
      ),
    );
  }
}
