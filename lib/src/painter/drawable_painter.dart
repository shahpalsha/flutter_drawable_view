import 'package:flutter/material.dart';
import '../model/drawable_element.dart';
import '../enums/draw_mode.dart';

class DrawablePainter extends CustomPainter {

  final List<DrawableElement> elements;

  DrawablePainter(this.elements);

  @override
  void paint(Canvas canvas, Size size) {

    for(var element in elements){

      Paint paint = Paint()
        ..color = element.color
        ..strokeWidth = element.strokeWidth
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round;

      switch(element.mode){

        case DrawMode.freeStyle:
        case DrawMode.eraser:
          for(int i=0;i<element.points.length-1;i++){
            canvas.drawLine(
                element.points[i],
                element.points[i+1],
                paint
            );
          }
          break;

        case DrawMode.line:
          canvas.drawLine(
              element.points.first,
              element.points.last,
              paint
          );
          break;

        case DrawMode.rectangle:
          Rect rect = Rect.fromPoints(
              element.points.first,
              element.points.last
          );
          canvas.drawRect(rect, paint);
          break;

        case DrawMode.circle:
          Offset c1 = element.points.first;
          Offset c2 = element.points.last;
          double radius = (c1 - c2).distance;
          canvas.drawCircle(c1, radius, paint);
          break;

        default:
          break;
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}