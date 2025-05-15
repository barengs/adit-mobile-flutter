import 'package:flutter/material.dart';

class ContentContainer extends StatelessWidget {
  final Widget child;

  const ContentContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        padding: const EdgeInsets.only(top: 16, bottom: 0),
        child: child,
      ),
    );
  }
}