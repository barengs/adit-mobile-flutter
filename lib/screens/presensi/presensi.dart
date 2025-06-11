import 'package:flutter/material.dart';
import 'package:siakad/widgets/presensi_qr_view.dart';
import 'package:siakad/widgets/switch_button.dart';
import 'package:siakad/widgets/manual_presensi_card.dart';

class Presensi extends StatefulWidget {
  const Presensi({super.key});

  @override
  State<Presensi> createState() => _PresensiState();
}

class _PresensiState extends State<Presensi> {
  bool isQRMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (child, animation) {
                  return FadeTransition(opacity: animation, child: child);
                },
                child:
                    isQRMode
                        ? const PresensiQRView(key: ValueKey('qr'))
                        : const ManualPresensiCard(key: ValueKey('manual')),
              ),
              const SizedBox(height: 12),
              SwitchButton(
                isQRMode: isQRMode,
                onToggle: (value) {
                  setState(() {
                    isQRMode = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
