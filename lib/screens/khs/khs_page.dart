import 'package:flutter/material.dart';
import 'package:siakad/widgets/content_container.dart';
import 'package:siakad/widgets/custom_header.dart';

class KhsPage extends StatefulWidget {
  const KhsPage({super.key});

  @override
  State<KhsPage> createState() => _KhsPageState();
}

class _KhsPageState extends State<KhsPage> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colors.primary,
      body: Column(
        children: [
          CustomHeader(title: 'KHS'),
          Expanded(
            child: ContentContainer(child: Center(child: Text('oke gas'))),
          ),
        ],
      ),
    );
  }
}
