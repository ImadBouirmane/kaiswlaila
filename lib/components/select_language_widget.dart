import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectLanguageWidget extends StatefulWidget {
  const SelectLanguageWidget({Key key}) : super(key: key);

  @override
  _SelectLanguageWidgetState createState() => _SelectLanguageWidgetState();
}

class _SelectLanguageWidgetState extends State<SelectLanguageWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: 320,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).customColor10,
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Color(0x3B1D2429),
              offset: Offset(0, -3),
            )
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: FFButtonWidget(
                  onPressed: () async {
                    setAppLanguage(context, 'ar');
                  },
                  text: FFLocalizations.of(context).getText(
                    'vs8cx4jh' /* Arabe */,
                  ),
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 60,
                    color: FlutterFlowTheme.of(context).customColor10,
                    textStyle: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Avenir Light ',
                          color: FlutterFlowTheme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: false,
                        ),
                    elevation: 2,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primaryColor,
                      width: 1,
                    ),
                    borderRadius: 40,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: FFButtonWidget(
                  onPressed: () async {
                    setAppLanguage(context, 'fr');
                  },
                  text: FFLocalizations.of(context).getText(
                    '2zvo621a' /* Français */,
                  ),
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 60,
                    color: FlutterFlowTheme.of(context).customColor10,
                    textStyle: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Avenir Light ',
                          color: FlutterFlowTheme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: false,
                        ),
                    elevation: 2,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primaryColor,
                      width: 1,
                    ),
                    borderRadius: 40,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: FFButtonWidget(
                  onPressed: () async {
                    setAppLanguage(context, 'en');
                  },
                  text: FFLocalizations.of(context).getText(
                    '5zz9v12q' /* Anglais */,
                  ),
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 60,
                    color: FlutterFlowTheme.of(context).customColor10,
                    textStyle: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Avenir Light ',
                          color: FlutterFlowTheme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: false,
                        ),
                    elevation: 2,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primaryColor,
                      width: 1,
                    ),
                    borderRadius: 40,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: FFButtonWidget(
                  onPressed: () async {
                    setAppLanguage(context, 'tr');
                  },
                  text: FFLocalizations.of(context).getText(
                    'jwmq41f2' /* Turquie */,
                  ),
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 60,
                    color: FlutterFlowTheme.of(context).customColor10,
                    textStyle: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Avenir Light ',
                          color: FlutterFlowTheme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: false,
                        ),
                    elevation: 2,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primaryColor,
                      width: 1,
                    ),
                    borderRadius: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
