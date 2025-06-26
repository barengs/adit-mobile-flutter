import 'package:flutter/material.dart';
import 'screens/auth/loginScreen.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIAK App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const loginScreen(), // <-- Ini yang membuat LoginScreen jadi halaman pertama
      debugShowCheckedModeBanner: false,
    );
  }
}
