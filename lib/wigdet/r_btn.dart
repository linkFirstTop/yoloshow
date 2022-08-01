import 'package:dd_js_util/common/circle.dart';
import 'package:dd_js_util/ext/widget.dart';
import 'package:flutter/material.dart';

class UnicornOutlineButton extends StatelessWidget {
  final _GradientPainter _painter;
  final Widget _child;
  final VoidCallback _callback;
  final double _radius;
  final Color? backgroundColor;
  final bool? hasBorder;

  UnicornOutlineButton(
      {Key? key, required double strokeWidth,
      required double radius,
      required Gradient gradient,
      required Widget child,
      required VoidCallback onPressed,
      this.hasBorder,
      this.backgroundColor})
      : _painter = _GradientPainter(strokeWidth: strokeWidth, radius: radius, gradient: gradient),
        _child = child,
        _callback = onPressed,
        _radius = radius, super(key: key);

  @override
  Widget build(BuildContext context) {
    return hasBorder == false
        ? _core()
        : CustomPaint(
            painter: _painter,
            child: _core(),
          );
  }

  Widget _core() {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: _callback,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 3),
        constraints: const BoxConstraints(minWidth: 88, minHeight: 44),
        decoration: BoxDecoration(color: backgroundColor),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _child,
          ],
        ),
      ),
    ).clipRadius(_radius).padding(2);
  }
}

class _GradientPainter extends CustomPainter {
  final Paint _paint = Paint();
  final double radius;
  final double strokeWidth;
  final Gradient gradient;

  _GradientPainter({required this.strokeWidth, required this.radius, required this.gradient});

  @override
  void paint(Canvas canvas, Size size) {
    Rect outerRect = Offset.zero & size;
    var outerRRect = RRect.fromRectAndRadius(outerRect, Radius.circular(radius));
    Rect innerRect = Rect.fromLTWH(strokeWidth, strokeWidth, size.width - strokeWidth * 2, size.height - strokeWidth * 2);
    var innerRRect = RRect.fromRectAndRadius(innerRect, Radius.circular(radius - strokeWidth));
    _paint.shader = gradient.createShader(outerRect);
    Path path1 = Path()..addRRect(outerRRect);
    Path path2 = Path()..addRRect(innerRRect);
    var path = Path.combine(PathOperation.difference, path1, path2);
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
}
