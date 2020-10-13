# flutter_pigeon_demo

A new flutter plugin project.

## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.

pigeon 生成指令
```
flutter pub run pigeon --input pigeons/pigeonDemoMessage.dart

输出配置在pigeonDemoMessage中的configurePigeon

ios/Classes/pigeonDemoMessage.h
ios/Classes/pigeonDemoMessage.m
flutter/lib_flutter_account/pigeonDemoMessage.java
lib/pigeonDemoMessage.dart
为pigeon自动生成文件
```