import 'package:flutter/material.dart';

lineSizedBox(int _color) {
  return SizedBox(
    width: 150,
    //No fim ficara somente 3px de height por conta do 'margin'
    height: 23,
    child: Card(
      color: Color(_color),
      margin: EdgeInsets.only(top: 10, bottom: 10),
    ),
  );
}