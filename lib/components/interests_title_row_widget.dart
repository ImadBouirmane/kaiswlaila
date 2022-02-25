import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class InterestsTitleRowWidget extends StatefulWidget {
  const InterestsTitleRowWidget({Key key}) : super(key: key);

  @override
  _InterestsTitleRowWidgetState createState() =>
      _InterestsTitleRowWidgetState();
}

class _InterestsTitleRowWidgetState extends State<InterestsTitleRowWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            FFLocalizations.of(context).getText(
              'ft1fnckk' /* Intérêts */,
            ),
            style: FlutterFlowTheme.of(context).subtitle1.override(
                  fontFamily: 'Avenir Light ',
                  fontSize: 20,
                  useGoogleFonts: false,
                ),
          ),
        ],
      ),
    );
  }
}
