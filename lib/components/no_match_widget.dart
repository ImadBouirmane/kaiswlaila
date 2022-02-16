import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class NoMatchWidget extends StatefulWidget {
  const NoMatchWidget({Key key}) : super(key: key);

  @override
  _NoMatchWidgetState createState() => _NoMatchWidgetState();
}

class _NoMatchWidgetState extends State<NoMatchWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).customColor10,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              FFLocalizations.of(context).getText(
                '01nbmcsk' /* Il n'y a pas des Matchs ! */,
              ),
              style: FlutterFlowTheme.of(context).title1.override(
                    fontFamily: 'Avenir Light ',
                    fontWeight: FontWeight.bold,
                    useGoogleFonts: false,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
