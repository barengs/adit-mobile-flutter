import 'package:flutter/material.dart';
import '../../widget/wrapper.dart';
import 'widget/button.dart';
import "widget/semester.dart";

void main() {
  runApp(const Khs());
}

class Khs extends StatelessWidget {
  const Khs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF2DB4B1),
        body: Wrapper(
          child: Column(
            children: [
              const SizedBox(height: 23),
              Padding(
                padding: EdgeInsets.only(left: 26),
                child: Row(
                  children: [
                    const Text(
                      "Detail kartu rencana studi",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Divider(color: Color(0XFFE5E5E5), thickness: 3),
              const SizedBox(height: 16),
              const TombolMati(),
              const SizedBox(height:8),
              const TahunSemester(),
            ],
          ),
        ),
      ),
    );
  }
}
