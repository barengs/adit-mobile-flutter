import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class DashedContainer extends StatelessWidget {
  final double width;
  final double height;
  final Widget? child;
  final double dashWidth;
  final double dashSpace;
  final double strokeWidth;
  final Color color;
  final BorderRadius borderRadius;

  const DashedContainer({
    super.key,
    required this.width,
    required this.height,
    this.child,
    this.dashWidth = 5,
    this.dashSpace = 5,
    this.strokeWidth = 1,
    this.color = const Color.fromRGBO(123, 97, 255, 1.0),
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _DashedBorderPainter(
        dashWidth: dashWidth,
        dashSpace: dashSpace,
        strokeWidth: strokeWidth,
        color: color,
        borderRadius: borderRadius,
      ),
      child: SizedBox(
        width: width,
        height: height,
        child: Center(child: child),
      ),
    );
  }
}

class _DashedBorderPainter extends CustomPainter {
  final double dashWidth;
  final double dashSpace;
  final double strokeWidth;
  final Color color;
  final BorderRadius borderRadius;

  _DashedBorderPainter({
    required this.dashWidth,
    required this.dashSpace,
    required this.strokeWidth,
    required this.color,
    required this.borderRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = color
          ..strokeWidth = strokeWidth
          ..style = PaintingStyle.stroke;

    final rect = Offset.zero & size;
    final rrect = borderRadius.toRRect(rect);
    final path = ui.Path()..addRRect(rrect);

    final dashPath = _createDashedPath(path, dashWidth, dashSpace);
    canvas.drawPath(dashPath, paint);
  }

  ui.Path _createDashedPath(
    ui.Path source,
    double dashWidth,
    double dashSpace,
  ) {
    final ui.Path dashedPath = ui.Path();
    for (final ui.PathMetric metric in source.computeMetrics()) {
      double distance = 0.0;
      while (distance < metric.length) {
        final double nextDash = dashWidth;
        dashedPath.addPath(
          metric.extractPath(distance, distance + nextDash),
          Offset.zero,
        );
        distance += dashWidth + dashSpace;
      }
    }
    return dashedPath;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
