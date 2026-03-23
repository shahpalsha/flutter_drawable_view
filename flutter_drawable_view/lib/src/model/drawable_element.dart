import 'dart:ui';

import 'package:flutter_drawable_view/flutter_drawable_view.dart';

class DrawableElement {
  List<Offset> points;
  Color color;
  double strokeWidth;
  DrawMode mode;

  DrawableElement({
    required this.points,
    required this.color,
    required this.strokeWidth,
    required this.mode,
  });
}