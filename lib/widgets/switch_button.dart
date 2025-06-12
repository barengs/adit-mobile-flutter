import 'package:flutter/material.dart';

class SwitchItem {
  final IconData icon;

  SwitchItem({required this.icon});
}

class SwitchButton extends StatefulWidget {
  final List<SwitchItem> items;
  final int activeIndex;
  final ValueChanged<int> onChanged;
  final Color activeColor;
  final Color inactiveColor;
  final Color backgroundColor;

  const SwitchButton({
    super.key,
    required this.items,
    required this.activeIndex,
    required this.onChanged,
    required this.activeColor,
    required this.inactiveColor,
    this.backgroundColor = const Color.fromRGBO(229, 229, 229, 0.6),
  });

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 3),
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(widget.items.length, (index) {
          final item = widget.items[index];
          final isActive = index == widget.activeIndex;

          return GestureDetector(
            onTap: () {
              widget.onChanged(index);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 61,
              height: 32,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: isActive ? widget.activeColor : widget.inactiveColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(
                item.icon,
                color: isActive ? Colors.white : Colors.grey,
                size: 25,
              ),
            ),
          );
        }),
      ),
    );
  }
}
