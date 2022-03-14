import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyChatsWidget extends StatefulWidget {
  const EmptyChatsWidget({Key key}) : super(key: key);

  @override
  _EmptyChatsWidgetState createState() => _EmptyChatsWidgetState();
}

class _EmptyChatsWidgetState extends State<EmptyChatsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  FFLocalizations.of(context).getText(
                    'fh8476sw' /* Vous n’avez pas de messages ! */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Avenir Light ',
                        color: FlutterFlowTheme.of(context).customColor4,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        useGoogleFonts: false,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
