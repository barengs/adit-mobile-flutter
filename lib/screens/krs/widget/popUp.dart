import 'package:flutter/material.dart';

void showPopUpKRS(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
    ),
    builder: (context) {
      return Container(
        height: 473,
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
        ),
        child: const PopUp(),
      );
    },
  );
}

class HeaderPopup extends StatelessWidget {
  const HeaderPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 1),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/centang2.png',
                  width: 32,
                  height: 31,
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Testing & Implementasi',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '210702-13',
                      style: TextStyle(
                        fontSize: 14,
                      
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height:16),
          const Divider(color: Color(0XFFE5E5E5), thickness: 4),
        ],
      ),
    );
  }
}

class PopUp extends StatelessWidget {
  const PopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        const HeaderPopup(),
        Padding(
          padding: EdgeInsets.only(left: 26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/i2.png', width: 27, height: 30),

              const SizedBox(width: 8),
              const Text('Sks'),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 26),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "2 sks",
                      style: TextStyle(
                       
                        fontSize: 15,
                      ),
                    ),
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
              Image.asset('assets/images/isearch.png', width: 27, height: 30),

              const SizedBox(width: 8),
              const Text('Kelas'),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 26),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "A",
                      style: TextStyle(
                 
                        fontSize: 15,
                      ),
                    ),
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
              const Text('Hari'),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 26),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Selasa",
                      style: TextStyle(
                     
                        fontSize: 15,
                      ),
                    ),
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
              Image.asset('assets/images/jam.png', width: 27, height: 30),

              const SizedBox(width: 8),
              const Text('Pukul'),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 26),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "08.50 - 10.30 WIB",
                      style: TextStyle(
                       
                        fontSize: 15,
                      ),
                    ),
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
              Image.asset('assets/images/room.png', width: 27, height: 30),

              const SizedBox(width: 8),
              const Text('Ruang'),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 26),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "K-1 H.21",
                      style: TextStyle(
                        
                        fontSize: 15,
                      ),
                    ),
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
              Image.asset('assets/images/centang2.png', width: 27, height: 30),

              const SizedBox(width: 8),
              const Text('Status'),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 26),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "DISETUJUI",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Color(0xFF2dbAB1)
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
