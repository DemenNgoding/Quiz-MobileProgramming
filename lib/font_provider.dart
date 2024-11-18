import 'package:flutter/material.dart';

class FontProvider with ChangeNotifier {
  TextStyle _textStyle;

  FontProvider(this._textStyle);

  TextStyle get textStyle => _textStyle;

  void setFont(TextStyle textStyle) {
    _textStyle = textStyle;
    notifyListeners();
  }
}
