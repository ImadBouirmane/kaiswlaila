import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SwipeButtonsWidget extends StatefulWidget {
  const SwipeButtonsWidget({Key key}) : super(key: key);

  @override
  _SwipeButtonsWidgetState createState() => _SwipeButtonsWidgetState();
}

class _SwipeButtonsWidgetState extends State<SwipeButtonsWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () async {
            setAppLanguage(context, 'fr');
          },
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).customColor10,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
