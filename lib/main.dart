import 'package:flutter/material.dart';
import 'dashboard/dashboard.dart';
// import 'package:flutter/services.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(
  //   SystemUiOverlayStyle(
  //     statusBarColor: Color(0xFF21ABA5), // Warna status bar
  //     statusBarIconBrightness: Brightness.light, // Warna ikon (putih)
  //   ),
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: const Dashboard(),
    );
  }
}
