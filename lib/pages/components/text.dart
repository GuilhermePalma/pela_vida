import 'package:flutter/material.dart';

text(String _text, double _size, int _color, {int fontWeight}) {
  if (fontWeight == null) {
    fontWeight = 4;
  }

  return Text(
    _text,
    style: TextStyle(
      fontSize: _size,
      color: Color(_color),
      fontWeight: FontWeight.values[fontWeight],
      //https://api.flutter.dev/flutter/dart-ui/FontWeight/toString.html
    ),
    textAlign: TextAlign.center,
  );
}
