import 'package:flutter/material.dart';
import 'package:siakad/widgets/info_cards.dart';
import 'package:siakad/constant/app_colors.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  InfoState createState() => InfoState();
}

class InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: InfoCards(
        imageUrl: 'assets/images/maxresdefault.jpg',
        title: 'Mahasiswa UTY Bangun StartUp',
        description:
            'Incididunt nostrud quis culpa nulla qui reprehenderit enim magna ex cillum sint. Eiusmod id dolor officia ea non magna excepteur et esse pariatur quis. Duis dolore consequat nulla ex irure nulla consectetur deserunt do reprehenderit labore proident aliqua. Officia voluptate duis tempor ad laboris veniam ad reprehenderit cillum et velit culpa sit. Exercitation sit magna deserunt nisi. Irure non aute excepteur laboris adipisicing ex labore. Amet ex magna nostrud irure.',
      ),
    );
  }
}
