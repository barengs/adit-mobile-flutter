import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  final bool isQRMode;
  final Function(bool) onToggle;

  const SwitchButton({
    super.key,
    required this.isQRMode,
    required this.onToggle,
  });

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      width: 138,
      height: 38,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(229, 229, 229, 0.6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildToggleButton(
            icon: Icons.qr_code_2_rounded,
            isActive: widget.isQRMode,
            onTap: () => widget.onToggle(true),
            activeColor: colors.secondary,
            inactiveColor: Colors.transparent,
          ),
          _buildToggleButton(
            icon: Icons.edit,
            isActive: !widget.isQRMode,
            onTap: () => widget.onToggle(false),
            activeColor: colors.secondary,
            inactiveColor: Colors.transparent,
          ),
        ],
      ),
    );
  }

  Widget _buildToggleButton({
    required IconData icon,
    required bool isActive,
    required VoidCallback onTap,
    required Color activeColor,
    required Color inactiveColor,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 61,
        height: 32,
        decoration: BoxDecoration(
          color: isActive ? activeColor : inactiveColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(
          icon,
          color:
              isActive
                  ? Colors.white
                  : const Color.fromRGBO(196, 196, 196, 1.0),
        ),
      ),
    );
  }
}
