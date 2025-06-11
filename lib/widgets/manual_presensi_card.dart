import 'package:flutter/material.dart';

class ManualPresensiCard extends StatefulWidget {
  const ManualPresensiCard({super.key});

  @override
  State<ManualPresensiCard> createState() => _ManualPresensiCardState();
}

class _ManualPresensiCardState extends State<ManualPresensiCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 28),
        Container(
          width: MediaQuery.of(context).size.width - 30,
          height: 417,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(31),
          ),
          child: const Center(
            child: Text(
              'Manual Presensi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
