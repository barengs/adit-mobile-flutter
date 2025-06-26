import 'package:flutter/material.dart';
import 'popUp.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 16, left: 26),
          child: Row(
            children: [
              const Text(
                "Daftar Mata Kuliah Yang Diambil",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Divider(color: Color(0XFFE5E5E5), thickness: 3),
        Padding(
          padding: EdgeInsets.only(left: 26, top: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/centang2.png', width: 32, height: 31),

              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Testing & Implementasi',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),

                  Text(
                    'Senin, 07:00 - 09:10 WIB',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 26),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                          ),
                          builder: (BuildContext context) {
                            return Container(
                              height: 573, 
                              padding: const EdgeInsets.only(top: 16),
                              child: const PopUp(),
                            );
                          },
                        );
                      },
                      child: Image.asset(
                        'assets/images/arrow.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Divider(color: Color(0XFFE5E5E5), thickness: 3, indent: 61),
        Padding(
          padding: EdgeInsets.only(left: 26, top: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/centang2.png', width: 32, height: 31),

              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Sistem Operasi',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),

                  Text(
                    'Senin, 07:00 - 09:10 WIB',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 26),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      'assets/images/arrow.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Divider(color: Color(0XFFE5E5E5), thickness: 3, indent: 61),
        Padding(
          padding: EdgeInsets.only(left: 26, top: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/centang2.png', width: 32, height: 31),

              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Mobile Computing',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),

                  Text(
                    'Senin, 07:00 - 09:10 WIB',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 26),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      'assets/images/arrow.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Divider(color: Color(0XFFE5E5E5), thickness: 3, indent: 61),
        Padding(
          padding: EdgeInsets.only(left: 26, top: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/centang2.png', width: 32, height: 31),

              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Rekayasa Web Praktik ',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),

                  Text(
                    'Senin, 07:00 - 09:10 WIB',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 26),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      'assets/images/arrow.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Divider(color: Color(0XFFE5E5E5), thickness: 3, indent: 61),
      ],
    );
  }
}
