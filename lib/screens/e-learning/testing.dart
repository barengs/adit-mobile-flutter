
import 'package:flutter/material.dart';
import 'widget/tugasKelompok.dart';
import 'widget/boxHeader.dart';
import 'widget/section.dart';
import '../../widget/wrapper.dart';

void main() {
  runApp(const Testing());
}

class Testing extends StatelessWidget {
  const Testing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF2DB4B1),
       /*  appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ), */
        body: Wrapper(
         child: Column(
         
          children: [
            const SizedBox(height:5),
            BoxHeader(),
            TugasKelompok(),
            const SizedBox(height:10),
          
            Expanded(
              
              child: StatusSection(),
            ),
          ],
        ),
        ),
      ),
    );
  }
}
