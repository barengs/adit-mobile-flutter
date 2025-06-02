import 'package:flutter/material.dart';

class AttendanceStatus {
  final Color color;
  final String label;
  final int count;

  AttendanceStatus({
    required this.color,
    required this.label,
    required this.count,
  });
}

class AttendanceStatusWidget extends StatelessWidget {
  final List<AttendanceStatus> items;

  const AttendanceStatusWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 315,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:
              items.map((item) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: Row(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: item.color,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          item.label,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color.fromRGBO(0, 0, 0, 0.75),
                          ),
                        ),
                      ),
                      Text(
                        '${item.count}x',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color.fromRGBO(0, 0, 0, 0.75),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}
