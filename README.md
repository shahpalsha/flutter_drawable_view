# 🎯flutter_drawable_view
```
flutter_drawable_view is a powerful and lightweight drawing canvas library for Flutter that allows developers to easily implement freehand drawing functionality inside their applications.

It helps developers build signature pads, sketch boards, whiteboards, note-taking apps, annotation tools and creative drawing editors without writing complex gesture detection or custom painter logic.

The library provides smooth drawing experience, brush color control, stroke width adjustment, eraser support, undo/redo functionality and canvas clearing with a simple reusable controller-based architecture.

Developers can quickly integrate modern drawing UI features for Android, iOS, Web and Desktop applications using an easy and flexible API.
```

----

## ✨ Features
```
- ✏️ Smooth freehand drawing
- 🎨 Brush color selection
- 📏 Stroke width control
- 🧽 Eraser tool support
- ↩️ Undo / Redo drawing
- 🗑 Clear canvas
- 🎯 Controller based drawing architecture
- ⚡ High performance CustomPainter rendering
- 📦 Lightweight and reusable library
- 🌐 Supports Android, iOS, Web & Desktop
```

----

## 📦 Installation

Add dependency in your pubspec.yaml
```
yaml
dependencies:
  flutter_drawable_view:
    path: https://github.com/Excelsior-Technologies-Community/flutter_drawable_view/tree/stage
```
Then run:
```
flutter pub get
```

----

## 🎬 Preview

https://github.com/user-attachments/assets/221921df-e2fa-4af4-ae37-89c1006396f8

----

## 🗂 File Structure
```
flutter_drawable_view/
│
├─ lib/
│   ├─ flutter_drawable_view.dart
│   │   // Main library export file
│   │
│   ├─ main.dart
│   │  // Demo drawing application
│   │  
│   └─ src/
│       ├─ drawable_controller.dart
│       │   // Drawing state & logic
│       │
│       ├─ drawable_painter.dart
│       │   // Canvas rendering engine
│       │
│       ├─ drawable_model.dart
│       │   // Drawing line model
│       │
│       └─ drawable_view.dart
│           // Drawing canvas widget
│
│
├─ README.md
│   // Package documentation
│
├─ LICENSE
│   // Open source license
│
└─ pubspec.yaml
    // Package configuration file
```

----

## 🚀 How To Use

1️⃣ Import Package
```
import 'package:flutter_drawable_view/flutter_drawable_view.dart';
```
2️⃣ Create Controller
```
DrawableController controller = DrawableController();
```
3️⃣ Add Drawing Canvas
```
Expanded(
  child: DrawableView(controller: controller),
)
```
4️⃣ Change Brush Color
```
controller.setColor(Colors.blue);
```
5️⃣ Enable Eraser
```
controller.enableEraser();
```
6️⃣ Stroke Width
```
controller.setStroke(8);
```
7️⃣ Undo / Redo / Clear
```
controller.undo();
controller.redo();
controller.clear();
```

----

## 🎨 Drawing Properties

| Feature          | Description          |
| ---------------- | -------------------- |
| Freehand Drawing | Smooth touch drawing |
| Color Control    | Change brush color   |
| Stroke Width     | Adjust thickness     |
| Eraser           | Remove drawing       |
| Undo/Redo        | Drawing history      |
| Clear Canvas     | Reset drawing        |

----

## 📄 MIT License
```
Copyright (c) 2026

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files to deal in the Software without restriction.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
```


