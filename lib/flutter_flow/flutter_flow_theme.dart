// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) => LightModeTheme();

  Color primaryColor;
  Color secondaryColor;
  Color tertiaryColor;
  Color alternate;
  Color primaryBackground;
  Color secondaryBackground;
  Color primaryText;
  Color secondaryText;

  Color customColor1;
  Color customColor2;
  Color customColor4;
  Color customColor5;
  Color customColor6;
  Color customColor3;
  Color customColor7;
  Color customColor8;
  Color customColor9;
  Color customColor10;

  TextStyle get title1 => TextStyle(
        fontFamily: 'Avenir Light ',
        color: customColor7,
        fontWeight: FontWeight.w900,
        fontSize: 24,
      );
  TextStyle get title2 => TextStyle(
        fontFamily: 'Avenir Light ',
        color: Color(0xFF303030),
        fontWeight: FontWeight.bold,
        fontSize: 22,
      );
  TextStyle get title3 => TextStyle(
        fontFamily: 'Avenir Light ',
        color: Color(0xFF303030),
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
  TextStyle get subtitle1 => TextStyle(
        fontFamily: 'Avenir Light ',
        color: customColor7,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
  TextStyle get subtitle2 => TextStyle(
        fontFamily: 'Avenir Light ',
        color: customColor3,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  TextStyle get bodyText1 => TextStyle(
        fontFamily: 'Avenir Light ',
        color: Color(0xFF303030),
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );
  TextStyle get bodyText2 => TextStyle(
        fontFamily: 'Avenir Light ',
        color: Color(0xFF424242),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
}

class LightModeTheme extends FlutterFlowTheme {
  Color primaryColor = const Color(0xFFFDB0BB);
  Color secondaryColor = const Color(0xFFDA85DD);
  Color tertiaryColor = const Color(0xFFFFFFFF);
  Color alternate = const Color(0x00000000);
  Color primaryBackground = const Color(0x00000000);
  Color secondaryBackground = const Color(0x00000000);
  Color primaryText = const Color(0x00000000);
  Color secondaryText = const Color(0x00000000);

  Color customColor1 = Color(0xFFFAF461);
  Color customColor2 = Color(0xFFBBDCF6);
  Color customColor4 = Color(0xFF303030);
  Color customColor5 = Color(0xFF757575);
  Color customColor6 = Color(0x00000000);
  Color customColor3 = Color(0x8A000000);
  Color customColor7 = Color(0xFF000000);
  Color customColor8 = Color(0xFFF1F4F8);
  Color customColor9 = Color(0x7DFFFFFF);
  Color customColor10 = Color(0x9DFFFFFF);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String fontFamily,
    Color color,
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    bool useGoogleFonts = true,
    TextDecoration decoration,
    double lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
