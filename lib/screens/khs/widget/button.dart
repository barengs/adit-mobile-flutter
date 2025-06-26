import 'package:flutter/material.dart';

class TombolMati extends StatelessWidget {
  const TombolMati({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 26), // geser tombol ke kanan
          width: 182,
          height: 29,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFE5E5E5),
              padding: EdgeInsets.zero, // hilangkan padding dalam tombol
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(29),
              ),
            ),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.start, // konten mulai dari kiri
              children: [
                Image.asset('assets/images/list1.png', width: 59, height: 25),
                const SizedBox(width: 20),
                Image.asset('assets/images/list2.png', width: 24, height: 24),
                const SizedBox(width: 25),
                Image.asset('assets/images/list3.png', width: 24, height: 24),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
