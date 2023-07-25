import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
TextStyle myTextStyle20(){
  return TextStyle(
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
}
TextStyle myTextStyle10({
  Color textColor = Colors.blueAccent,
  FontWeight font = FontWeight.bold
}){
  return TextStyle(
    fontStyle: FontStyle.italic,
    fontWeight: font,
    fontSize: 10,
    color: textColor
  );
}