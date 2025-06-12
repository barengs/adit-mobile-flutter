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
  int activeIndex = 0;

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
                    activeIndex == 0
                        ? const PresensiQRView(key: ValueKey('qr'))
                        : const ManualPresensiCard(key: ValueKey('manual')),
              ),
              const SizedBox(height: 12),
              SwitchButton(
                activeIndex: activeIndex,
                activeColor: Theme.of(context).colorScheme.secondary,
                inactiveColor: Colors.transparent,
                onChanged: (index) {
                  setState(() {
                    activeIndex = index;
                  });
                },
                items: [
                  SwitchItem(icon: Icons.qr_code_2_rounded),
                  SwitchItem(icon: Icons.edit),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
