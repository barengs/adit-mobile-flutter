import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:siakad/widgets/attendance_status.dart';

class AbsensiCard extends StatelessWidget {
  final bool isRounded;
  final String mataKuliah;
  final String waktu;

  const AbsensiCard({
    super.key,
    required this.isRounded,
    required this.mataKuliah,
    required this.waktu,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final List<AttendanceStatus> attendanceData = [
      AttendanceStatus(color: Color(0xFFD80000), label: 'Alpa', count: 0),
      AttendanceStatus(color: Color(0xFFEDCB19), label: 'Sakit', count: 0),
      AttendanceStatus(color: Colors.orange, label: 'Izin', count: 0),
      AttendanceStatus(color: colors.secondary, label: 'Hadir', count: 7),
    ];
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      height: 364,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(246, 246, 246, 1.0),
        borderRadius:
            isRounded
                ? const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )
                : BorderRadius.zero,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            height: 67,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(33.5),
            ),
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: colors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    'assets/svg/save.svg',
                    width: 20.25,
                    height: 24.75,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      mataKuliah,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 10, height: 3),
                    Text(
                      waktu,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(85, 85, 85, 0.58),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          //* Presentase
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '50%',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Color.fromRGBO(0, 0, 0, 0.75),
                ),
              ),
            ),
          ),

          const SizedBox(height: 3),

          //* Progress Bar
          Stack(
            children: [
              Container(
                width: 335,
                height: 19,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color.fromRGBO(241, 241, 241, 1.0),
                    width: 2,
                  ),
                ),
              ),
              Positioned(
                left: 4,
                top: 4,
                child: Container(
                  width: 170,
                  height: 11,
                  decoration: BoxDecoration(
                    color: colors.secondary,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 5),

          //* Daftar Kehadiran
          AttendanceStatusWidget(items: attendanceData),

          const SizedBox(height: 10),

          //* Tombol rincian
          Container(
            width: 340,
            decoration: BoxDecoration(
              color: Color.fromRGBO(45, 186, 177, 0.38),
              borderRadius: BorderRadius.circular(13),
            ),
            child: SizedBox(
              height: 55,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Rincian',
                      style: TextStyle(
                        color: Color.fromRGBO(45, 186, 177, 0.72),
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Icon(
                      Icons.arrow_outward_outlined,
                      color: Color.fromRGBO(45, 186, 177, 0.72),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
