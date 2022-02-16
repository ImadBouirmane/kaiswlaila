import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../qs4/qs4_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Qs3Widget extends StatefulWidget {
  const Qs3Widget({Key key}) : super(key: key);

  @override
  _Qs3WidgetState createState() => _Qs3WidgetState();
}

class _Qs3WidgetState extends State<Qs3Widget> {
  bool checkButton1Value;
  bool checkButton2Value;
  bool checkButton3Value;
  bool checkButton4Value;
  bool checkButton5Value;
  bool checkButton6Value;
  bool checkButton7Value;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                FlutterFlowTheme.of(context).primaryColor,
                FlutterFlowTheme.of(context).customColor2
              ],
              stops: [0, 1],
              begin: AlignmentDirectional(0, 1),
              end: AlignmentDirectional(0, -1),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 50, 10, 30),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).customColor9,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 20),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'mc942bqj' /* Questionnaire */,
                          ),
                          style: FlutterFlowTheme.of(context).title1,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 70),
                      child: LinearPercentIndicator(
                          percent: 0.2,
                          width: MediaQuery.of(context).size.width * 0.7,
                          lineHeight: 24,
                          animation: true,
                          progressColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          backgroundColor:
                              FlutterFlowTheme.of(context).customColor10,
                          center: Text(
                            FFLocalizations.of(context).getText(
                              'pe7k4a3w' /* 20% */,
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Avenir Light ',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  useGoogleFonts: false,
                                ),
                          ),
                          barRadius: Radius.circular(10)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                          child: Container(
                            width: 30,
                            height: 30,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/icons8_5_60px.png',
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                            child: Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: AutoSizeText(
                                  FFLocalizations.of(context).getText(
                                    'jz9ayuiz' /* Le plus important dans une rel... */,
                                  ),
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Avenir Light ',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    AuthUserStreamWidget(
                      child: Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          unselectedWidgetColor: Color(0xFF707070),
                        ),
                        child: CheckboxListTile(
                          value: checkButton1Value ??=
                              currentUserDocument?.qsQ5C1,
                          onChanged: (newValue) =>
                              setState(() => checkButton1Value = newValue),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'uewjmka5' /* La passion */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Avenir Light ',
                                  color:
                                      FlutterFlowTheme.of(context).customColor7,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
                          tileColor: FlutterFlowTheme.of(context).primaryColor,
                          activeColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          checkColor:
                              FlutterFlowTheme.of(context).tertiaryColor,
                          dense: true,
                          controlAffinity: ListTileControlAffinity.trailing,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(40, 0, 40, 0),
                        ),
                      ),
                    ),
                    AuthUserStreamWidget(
                      child: Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          unselectedWidgetColor: Color(0xFF707070),
                        ),
                        child: CheckboxListTile(
                          value: checkButton2Value ??=
                              currentUserDocument?.qsQ5C2,
                          onChanged: (newValue) =>
                              setState(() => checkButton2Value = newValue),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              '48uoxjm9' /* L'amour */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Avenir Light ',
                                  color:
                                      FlutterFlowTheme.of(context).customColor7,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
                          tileColor: FlutterFlowTheme.of(context).primaryColor,
                          activeColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          checkColor:
                              FlutterFlowTheme.of(context).tertiaryColor,
                          dense: true,
                          controlAffinity: ListTileControlAffinity.trailing,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(40, 0, 40, 0),
                        ),
                      ),
                    ),
                    AuthUserStreamWidget(
                      child: Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          unselectedWidgetColor: Color(0xFF707070),
                        ),
                        child: CheckboxListTile(
                          value: checkButton3Value ??=
                              currentUserDocument?.qsQ5C3,
                          onChanged: (newValue) =>
                              setState(() => checkButton3Value = newValue),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'h4lxd1oe' /* La complicité */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Avenir Light ',
                                  color:
                                      FlutterFlowTheme.of(context).customColor7,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
                          tileColor: FlutterFlowTheme.of(context).primaryColor,
                          activeColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          checkColor:
                              FlutterFlowTheme.of(context).tertiaryColor,
                          dense: true,
                          controlAffinity: ListTileControlAffinity.trailing,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(40, 0, 40, 0),
                        ),
                      ),
                    ),
                    AuthUserStreamWidget(
                      child: Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          unselectedWidgetColor: Color(0xFF707070),
                        ),
                        child: CheckboxListTile(
                          value: checkButton4Value ??=
                              currentUserDocument?.qsQ5C4,
                          onChanged: (newValue) =>
                              setState(() => checkButton4Value = newValue),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              '6h8fr3jl' /* La loyauté */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Avenir Light ',
                                  color:
                                      FlutterFlowTheme.of(context).customColor7,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
                          tileColor: FlutterFlowTheme.of(context).primaryColor,
                          activeColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          checkColor:
                              FlutterFlowTheme.of(context).tertiaryColor,
                          dense: true,
                          controlAffinity: ListTileControlAffinity.trailing,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(40, 0, 40, 0),
                        ),
                      ),
                    ),
                    AuthUserStreamWidget(
                      child: Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          unselectedWidgetColor: Color(0xFF707070),
                        ),
                        child: CheckboxListTile(
                          value: checkButton5Value ??=
                              currentUserDocument?.qsQ5C5,
                          onChanged: (newValue) =>
                              setState(() => checkButton5Value = newValue),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'ei7fal8z' /* La fidélité */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Avenir Light ',
                                  color:
                                      FlutterFlowTheme.of(context).customColor7,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
                          tileColor: FlutterFlowTheme.of(context).primaryColor,
                          activeColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          checkColor:
                              FlutterFlowTheme.of(context).tertiaryColor,
                          dense: true,
                          controlAffinity: ListTileControlAffinity.trailing,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(40, 0, 40, 0),
                        ),
                      ),
                    ),
                    AuthUserStreamWidget(
                      child: Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          unselectedWidgetColor: Color(0xFF707070),
                        ),
                        child: CheckboxListTile(
                          value: checkButton6Value ??=
                              currentUserDocument?.qsQ5C6,
                          onChanged: (newValue) =>
                              setState(() => checkButton6Value = newValue),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'ekxocbzk' /* La transparence */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Avenir Light ',
                                  color:
                                      FlutterFlowTheme.of(context).customColor7,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
                          tileColor: FlutterFlowTheme.of(context).primaryColor,
                          activeColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          checkColor:
                              FlutterFlowTheme.of(context).tertiaryColor,
                          dense: true,
                          controlAffinity: ListTileControlAffinity.trailing,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(40, 0, 40, 0),
                        ),
                      ),
                    ),
                    AuthUserStreamWidget(
                      child: Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          unselectedWidgetColor: Color(0xFF707070),
                        ),
                        child: CheckboxListTile(
                          value: checkButton7Value ??=
                              currentUserDocument?.qsQ5C7,
                          onChanged: (newValue) =>
                              setState(() => checkButton7Value = newValue),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              '41hacv6d' /* L’authenticité  */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Avenir Light ',
                                  color:
                                      FlutterFlowTheme.of(context).customColor7,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
                          tileColor: FlutterFlowTheme.of(context).primaryColor,
                          activeColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          checkColor:
                              FlutterFlowTheme.of(context).tertiaryColor,
                          dense: true,
                          controlAffinity: ListTileControlAffinity.trailing,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(40, 0, 40, 0),
                        ),
                      ),
                    ),
                    Spacer(),
                    FFButtonWidget(
                      onPressed: () async {
                        final usersUpdateData = createUsersRecordData(
                          qsQ5C1: checkButton1Value,
                          qsQ5C2: checkButton2Value,
                          qsQ5C3: checkButton3Value,
                          qsQ5C4: checkButton4Value,
                          qsQ5C5: checkButton5Value,
                          qsQ5C6: checkButton6Value,
                          qsQ5C7: checkButton7Value,
                        );
                        await currentUserReference.update(usersUpdateData);
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRight,
                            duration: Duration(milliseconds: 200),
                            reverseDuration: Duration(milliseconds: 200),
                            child: Qs4Widget(),
                          ),
                        );
                      },
                      text: FFLocalizations.of(context).getText(
                        'fqmnws25' /* Continuez
 */
                        ,
                      ),
                      options: FFButtonOptions(
                        width: 200,
                        height: 50,
                        color: FlutterFlowTheme.of(context).customColor9,
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle2
                            .override(
                              fontFamily: 'Avenir Light ',
                              color:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: false,
                            ),
                        elevation: 5,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
