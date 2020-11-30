import 'package:flutter/material.dart';
import 'package:pela_vida/pages/style/colorsGlobal.dart';
import 'package:pela_vida/pages/components/text.dart';

buttons(String _textbnt, Function action, {List<double> padding}) {
  int _color = grey0;

  if (padding == null) {
    padding = [0, 0, 0, 0];
  }

  return Container(
    //Responsavel pela margem do RaisedButton
    padding:
        EdgeInsets.fromLTRB(padding[0], padding[1], padding[2], padding[3]),
    child: RaisedButton(
      color: Color(_color),
      child: text(_textbnt, 18, black),
      onPressed: action,
    ),
  );
}
