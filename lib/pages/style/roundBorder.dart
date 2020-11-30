import 'package:flutter/material.dart';

roundBorder(int _color, double _radius) {
  return BoxDecoration(
    color: Color(_color),
    borderRadius: BorderRadius.circular(_radius),
  );
}