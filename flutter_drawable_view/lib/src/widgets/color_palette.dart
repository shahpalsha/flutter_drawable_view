import 'package:flutter/material.dart';
import '../controller/drawable_controller.dart';

class ColorPalette extends StatelessWidget {

  final DrawableController controller;

  ColorPalette({required this.controller});

  final List<Color> colors = [
    Colors.black,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.yellow,
    Colors.teal,
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: colors.map((c){
        return GestureDetector(
          onTap: ()=>controller.setColor(c),
          child: Container(
            margin: const EdgeInsets.all(6),
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: c,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey),
            ),
          ),
        );
      }).toList(),
    );
  }
}