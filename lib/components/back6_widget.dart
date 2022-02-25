import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class Back6Widget extends StatefulWidget {
  const Back6Widget({Key key}) : super(key: key);

  @override
  _Back6WidgetState createState() => _Back6WidgetState();
}

class _Back6WidgetState extends State<Back6Widget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRect(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(
                      sigmaX: 0,
                      sigmaY: 0,
                    ),
                    child: Image.asset(
                      'assets/images/Asset_3@4x_copie.png',
                      width: 500,
                      height: 500,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
