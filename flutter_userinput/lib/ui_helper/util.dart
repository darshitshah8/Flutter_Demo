import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

InputDecoration UserInputDecoration(){
  return InputDecoration(
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(
              color: Colors.blueAccent,
              width: 2
          ),
      ),
          enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(
          color: Colors.grey,
          width: 2
  )
  ))
  ;
}
