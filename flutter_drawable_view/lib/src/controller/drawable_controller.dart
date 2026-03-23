import 'package:flutter/material.dart';
import '../model/drawable_element.dart';
import '../enums/draw_mode.dart';

class DrawableController extends ChangeNotifier {

  List<DrawableElement> elements = [];
  List<DrawableElement> undoStack = [];

  Color selectedColor = Colors.black;
  double strokeWidth = 4;
  DrawMode drawMode = DrawMode.freeStyle;

  Color backgroundColor = Colors.white;

  Offset? startPoint;

  void setMode(DrawMode mode){
    drawMode = mode;
    notifyListeners();
  }
  void setColor(Color color){
    selectedColor = color;
    notifyListeners();
  }
  void setStroke(double value){
    strokeWidth = value;
    notifyListeners();
  }
  void startDrawing(Offset point){
    undoStack.clear();
    startPoint = point;
    elements.add(
      DrawableElement(
        points: [point],
        color: drawMode == DrawMode.eraser ? backgroundColor : selectedColor,
        strokeWidth: strokeWidth,
        mode: drawMode,
      ),
    );
    notifyListeners();
  }
  void updateDrawing(Offset point){
    if(elements.isEmpty) return;

    if(drawMode == DrawMode.freeStyle || drawMode == DrawMode.eraser){
      elements.last.points.add(point);
    }else{
      elements.last.points = [startPoint!, point];
    }

    notifyListeners();
  }
  void endDrawing(){
    notifyListeners();
  }
  void undo(){
    if(elements.isNotEmpty){
      undoStack.add(elements.removeLast());
      notifyListeners();
    }
  }
  void redo(){
    if(undoStack.isNotEmpty){
      elements.add(undoStack.removeLast());
      notifyListeners();
    }
  }
  void clear(){
    elements.clear();
    undoStack.clear();
    notifyListeners();
  }
}