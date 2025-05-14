import 'package:flutter/material.dart';

class Absensi extends StatefulWidget {
  const Absensi({super.key});

  @override
  State<Absensi> createState() => _AbsensiState();
}

class _AbsensiState extends State<Absensi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Absensi')),
      body: const Center(child: Text('Ini halaman absensi')),
    );
  }
}
