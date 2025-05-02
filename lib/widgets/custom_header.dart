import 'package:flutter/material.dart';

class CustomHeader extends StatefulWidget {
  const CustomHeader({super.key});

  @override
  CustomHeaderState createState() => CustomHeaderState();
}

class CustomHeaderState extends State<CustomHeader> {
  // Misalnya, data pengguna ini diambil dari backend/API atau local storage
  String profileImageUrl =
      'https://www.example.com/profile.jpg';
  String username = 'Addis';
  String npm = '123456789';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      decoration: BoxDecoration(
        color: Color(0xFF21ABA5), // Warna latar belakang header
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      child: Row(
        children: [
          // Foto Profil
          CircleAvatar(
            radius: 30, // Ukuran avatar
            backgroundImage: NetworkImage(profileImageUrl),
          ),
          SizedBox(width: 16), // Jarak antara foto profil dan teks
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Username
              Text(
                username,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Righteous',
                ),
              ),
              // NPM
              Text(
                npm,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'RobotoSlab',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
