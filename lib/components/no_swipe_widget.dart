import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class NoSwipeWidget extends StatefulWidget {
  const NoSwipeWidget({Key key}) : super(key: key);

  @override
  _NoSwipeWidgetState createState() => _NoSwipeWidgetState();
}

class _NoSwipeWidgetState extends State<NoSwipeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: Image.asset(
            'assets/images/Asset_7@4x.png',
          ).image,
        ),
      ),
    );
  }
}
