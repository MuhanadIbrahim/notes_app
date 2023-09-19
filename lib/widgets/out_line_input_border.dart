import 'package:flutter/material.dart';


OutlineInputBorder OutLineInputBorder([color]) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.white));
}
