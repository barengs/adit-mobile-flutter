import 'package:flutter/material.dart';
import '../uploadScreen.dart';
import '../../home/homeScreen.dart';

class TambahFile extends StatelessWidget {
  const TambahFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Upload()),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0x80C4C4C4),

          padding: const EdgeInsets.symmetric(vertical: 12),
          minimumSize: const Size(152, 10),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        ),

        child: const Text(
          ' Tambah File',
          style: TextStyle(fontSize: 12, color: Colors.black),
        ),
      ),
    );
  }
}

class Simpan extends StatelessWidget {
  const Simpan({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF2DB4B1),
          padding: const EdgeInsets.symmetric(vertical: 12),
          minimumSize: const Size(101, 36),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        ),
        child: const Text(
          'Simpan',
          style: TextStyle(fontSize: 12, color: Colors.white),
        ),
      ),
    );
  }
}

class Batal extends StatelessWidget {
  const Batal({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(
            context,
            
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFC4C4C4),
          padding: const EdgeInsets.symmetric(vertical: 12),
          minimumSize: const Size(101, 36),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        ),
        child: const Text(
          'Batal',
          style: TextStyle(fontSize: 12, color: Colors.white),
        ),
      ),
    );
  }
}
