import 'package:flutter/material.dart';

import 'flutter_drawable_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DrawingScreen(),
    );
  }
}

class DrawingScreen extends StatefulWidget {
  const DrawingScreen({super.key});

  @override
  State<DrawingScreen> createState() => _DrawingScreenState();
}

class _DrawingScreenState extends State<DrawingScreen> {

  final DrawableController controller = DrawableController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text("Advanced Drawable View"),
      ),

      body: Column(
        children: [

          /// DRAWING AREA
          Expanded(
            child: Container(
              color: Colors.white,
              child: DrawableView(controller: controller),
            ),
          ),

          /// COLOR PALETTE
          ColorPalette(controller: controller),

          /// STROKE SLIDER
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [

                const Text("Stroke"),

                Expanded(
                  child: AnimatedBuilder(
                    animation: controller,
                    builder: (context, _) {
                      return Slider(
                        min: 1,
                        max: 25,
                        value: controller.strokeWidth,
                        onChanged: controller.setStroke,
                      );
                    },
                  ),
                ),

              ],
            ),
          ),

          /// TOOLBAR
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                IconButton(
                  icon: const Icon(Icons.brush),
                  onPressed: () =>
                      controller.setMode(DrawMode.freeStyle),
                ),

                IconButton(
                  icon: const Icon(Icons.crop_square),
                  onPressed: () =>
                      controller.setMode(DrawMode.rectangle),
                ),

                IconButton(
                  icon: const Icon(Icons.circle_outlined),
                  onPressed: () =>
                      controller.setMode(DrawMode.circle),
                ),

                IconButton(
                  icon: const Icon(Icons.show_chart),
                  onPressed: () =>
                      controller.setMode(DrawMode.line),
                ),

                IconButton(
                  icon: const Icon(Icons.auto_fix_off),
                  onPressed: () =>
                      controller.setMode(DrawMode.eraser),
                ),

                IconButton(
                  icon: const Icon(Icons.undo),
                  onPressed: controller.undo,
                ),

                IconButton(
                  icon: const Icon(Icons.redo),
                  onPressed: controller.redo,
                ),

                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: controller.clear,
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}