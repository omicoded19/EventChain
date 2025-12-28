import 'package:flutter/material.dart';

class UiHelper {
  static customText({
    required String text,
    required int textColor,
    required FontWeight fontWeight,
    String? fontFam,
    required double fontSize,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: Color(textColor),
        fontWeight: fontWeight,
        fontFamily: fontFam,
        fontSize: fontSize,
      ),
    );
  }
}
