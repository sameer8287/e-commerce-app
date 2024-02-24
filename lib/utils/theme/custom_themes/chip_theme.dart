import 'package:flutter/material.dart';

class ChipThemee {
  ChipThemee._();

  static ChipThemeData lightThemeData = ChipThemeData(
      disabledColor: Colors.grey.withOpacity(0.4),
      selectedColor: Colors.blue,
      labelStyle: const TextStyle(color: Colors.black),
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
      checkmarkColor: Colors.white);

  static ChipThemeData darkThemeData = ChipThemeData(
      disabledColor: Colors.grey,
      labelStyle: TextStyle(color: Colors.white),
      selectedColor: Colors.blue,
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
      checkmarkColor: Colors.white);
}
