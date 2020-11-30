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
    ),
    textAlign: TextAlign.center,
  );
}
