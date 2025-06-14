import 'package:flutter/material.dart';
import 'package:siakad/widgets/content_container.dart';
import 'package:siakad/widgets/custom_header.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colors.primary,
      body: Column(
        children: [
          CustomHeader(title: 'Profile'),
          Expanded(
            child: ContentContainer(child: Column(children: [Text('oke')])),
          ),
        ],
      ),
    );
  }
}
