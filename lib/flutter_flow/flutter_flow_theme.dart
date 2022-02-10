import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: avoid_classes_with_only_static_members
class FlutterFlowTheme {
  static const Color primaryColor = Color(0xFFFDB0BB);
  static const Color secondaryColor = Color(0xFFDA85DD);
  static const Color tertiaryColor = Color(0xFFFFFFFF);

  static const Color customColor1 = Color(0xFFFAF461);
  static const Color customColor2 = Color(0xFFBBDCF6);
  static const Color customColor4 = Color(0xFF303030);
  static const Color customColor5 = Color(0xFF757575);
  static const Color customColor6 = Color(0x00000000);
  static const Color customColor3 = Color(0x8A000000);
  static const Color customColor7 = Color(0xFF000000);
  static const Color customColor8 = Color(0xFFF1F4F8);
  static const Color customColor9 = Color(0x7DFFFFFF);
  static const Color customColor10 = Color(0x9DFFFFFF);

  String primaryFontFamily = 'Poppins';
  String secondaryFontFamily = 'Roboto';
  static TextStyle get title1 => TextStyle(
        fontFamily: 'Avenir Light ',
        color: customColor7,
        fontWeight: FontWeight.w900,
        fontSize: 24,
      );
  static TextStyle get title2 => TextStyle(
        fontFamily: 'Avenir Light ',
        color: Color(0xFF303030),
        fontWeight: FontWeight.bold,
        fontSize: 22,
      );
  static TextStyle get title3 => TextStyle(
        fontFamily: 'Avenir Light ',
        color: Color(0xFF303030),
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
  static TextStyle get subtitle1 => TextStyle(
        fontFamily: 'Avenir Light ',
        color: customColor7,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
  static TextStyle get subtitle2 => TextStyle(
        fontFamily: 'Avenir Light ',
        color: customColor3,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  static TextStyle get bodyText1 => TextStyle(
        fontFamily: 'Avenir Light ',
        color: Color(0xFF303030),
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );
  static TextStyle get bodyText2 => TextStyle(
        fontFamily: 'Avenir Light ',
        color: Color(0xFF424242),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String fontFamily,
    Color color,
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    bool useGoogleFonts = true,
    double lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              height: lineHeight,
            );
}
