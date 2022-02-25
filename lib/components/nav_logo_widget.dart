import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class NavLogoWidget extends StatefulWidget {
  const NavLogoWidget({Key key}) : super(key: key);

  @override
  _NavLogoWidgetState createState() => _NavLogoWidgetState();
}

class _NavLogoWidgetState extends State<NavLogoWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/Asset_10@4x_copie.png',
          width: 80,
          height: 80,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}
