import 'package:flutter/material.dart';
import '../controller/drawable_controller.dart';
import '../painter/drawable_painter.dart';

class DrawableView extends StatelessWidget {

  final DrawableController controller;

  const DrawableView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {

    return AnimatedBuilder(
      animation: controller,
      builder: (context, child){

        return InteractiveViewer(
          maxScale: 5,
          minScale: 0.5,
          child: GestureDetector(
            onPanStart: (d)=>controller.startDrawing(d.localPosition),
            onPanUpdate: (d)=>controller.updateDrawing(d.localPosition),
            onPanEnd: (_)=>controller.endDrawing(),
            child: CustomPaint(
              painter: DrawablePainter(controller.elements),
              size: Size.infinite,
            ),
          ),
        );
      },
    );
  }
}