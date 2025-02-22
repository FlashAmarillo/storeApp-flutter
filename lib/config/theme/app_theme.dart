import 'package:flutter/material.dart';

// color por defecto de amazon
const Color _customColor = Color(0xff232f3e);

const List<Color> _colorThemes = [
  _customColor,

  // Name: Mellow Apricot
  Color(0xffF1C40F),

  // Name: Charcoal
  Color(0xff37475A),

  // Eerie Black
  Color(0xff131A22),

  Colors.pink,
  Colors.deepOrangeAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0 && selectedColor <= _colorThemes.length -1,
        'color must be beetween 0 and ${_colorThemes.length}',
      );

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorThemes[selectedColor]
    );
  }
}
