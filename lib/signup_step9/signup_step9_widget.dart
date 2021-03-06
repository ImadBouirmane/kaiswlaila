import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../signup_step10/signup_step10_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SignupStep9Widget extends StatefulWidget {
  const SignupStep9Widget({Key key}) : super(key: key);

  @override
  _SignupStep9WidgetState createState() => _SignupStep9WidgetState();
}

class _SignupStep9WidgetState extends State<SignupStep9Widget> {
  PageController pageViewController;
  bool checkButton1Value;
  bool checkButton2Value;
  bool checkButton3Value;
  bool checkButton4Value;
  bool checkButton5Value;
  bool checkButton6Value;
  bool checkButton7Value;
  bool checkButton8Value;
  bool checkButton10Value;
  bool checkButton9Value;
  bool checkButton11Value;
  bool checkButton12Value;
  bool checkButton13Value;
  bool checkButton14Value;
  bool checkButton15Value;
  bool checkButton16Value;
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
            boxShadow: [
              BoxShadow(
                color: FlutterFlowTheme.primaryColor,
                offset: Offset(100, 100),
                spreadRadius: 100,
              )
            ],
            gradient: LinearGradient(
              colors: [
                Color(0xFFE7E2B0),
                Color(0xFFE6C8DD),
                FlutterFlowTheme.customColor2,
                FlutterFlowTheme.secondaryColor
              ],
              stops: [0.2, 0.4, 0.6, 0.8],
              begin: AlignmentDirectional(0.87, -1),
              end: AlignmentDirectional(-0.87, 1),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 50, 10, 30),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.customColor9,
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
                            '4wkntniv' /* Questionnaire */,
                          ),
                          style: FlutterFlowTheme.title1,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 50),
                      child: LinearPercentIndicator(
                          percent: 0.3,
                          width: MediaQuery.of(context).size.width * 0.7,
                          lineHeight: 24,
                          animation: true,
                          progressColor: FlutterFlowTheme.primaryColor,
                          backgroundColor: Color(0xFFF1F4F8),
                          center: Text(
                            FFLocalizations.of(context).getText(
                              'qedasp3n' /* 30% */,
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Avenir Light ',
                              color: FlutterFlowTheme.primaryColor,
                              useGoogleFonts: false,
                            ),
                          ),
                          barRadius: Radius.circular(10)),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: AutoSizeText(
                            FFLocalizations.of(context).getText(
                              '4zinrync' /* Qu???est-ce qui est important po... */,
                            ),
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Avenir Light ',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: false,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                              child: PageView(
                                controller: pageViewController ??=
                                    PageController(initialPage: 0),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Wrap(
                                    spacing: 0,
                                    runSpacing: 0,
                                    alignment: WrapAlignment.start,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    direction: Axis.horizontal,
                                    runAlignment: WrapAlignment.start,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [
                                      AuthUserStreamWidget(
                                        child: Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                            ),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton1Value ??=
                                                currentUserDocument?.qsQ6C1,
                                            onChanged: (newValue) => setState(
                                                () => checkButton1Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ane0kc7c' /* Ses valeurs */,
                                              ),
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Avenir Light ',
                                                color: FlutterFlowTheme
                                                    .customColor7,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.tertiaryColor,
                                            dense: true,
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .trailing,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 0, 40, 0),
                                          ),
                                        ),
                                      ),
                                      AuthUserStreamWidget(
                                        child: Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                            ),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton2Value ??=
                                                currentUserDocument?.qsQ6C2,
                                            onChanged: (newValue) => setState(
                                                () => checkButton2Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'tf1lja61' /* Son ??nergie */,
                                              ),
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Avenir Light ',
                                                color: FlutterFlowTheme
                                                    .customColor7,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.tertiaryColor,
                                            dense: true,
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .trailing,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 0, 40, 0),
                                          ),
                                        ),
                                      ),
                                      AuthUserStreamWidget(
                                        child: Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                            ),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton3Value ??=
                                                currentUserDocument?.qsQ6C3,
                                            onChanged: (newValue) => setState(
                                                () => checkButton3Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'zw15di46' /* L???attachement */,
                                              ),
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Avenir Light ',
                                                color: FlutterFlowTheme
                                                    .customColor7,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.tertiaryColor,
                                            dense: true,
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .trailing,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 0, 40, 0),
                                          ),
                                        ),
                                      ),
                                      AuthUserStreamWidget(
                                        child: Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                            ),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton4Value ??=
                                                currentUserDocument?.qsQ6C4,
                                            onChanged: (newValue) => setState(
                                                () => checkButton4Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'la2d6xdw' /* Les habitudes */,
                                              ),
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Avenir Light ',
                                                color: FlutterFlowTheme
                                                    .customColor7,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.tertiaryColor,
                                            dense: true,
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .trailing,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 0, 40, 0),
                                          ),
                                        ),
                                      ),
                                      AuthUserStreamWidget(
                                        child: Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                            ),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton5Value ??=
                                                currentUserDocument?.qsQ6C5,
                                            onChanged: (newValue) => setState(
                                                () => checkButton5Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'k2v86djq' /* Le plaisir et la d??tente */,
                                              ),
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Avenir Light ',
                                                color: FlutterFlowTheme
                                                    .customColor7,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.tertiaryColor,
                                            dense: true,
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .trailing,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 0, 40, 0),
                                          ),
                                        ),
                                      ),
                                      AuthUserStreamWidget(
                                        child: Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                            ),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton6Value ??=
                                                currentUserDocument?.qsQ6C6,
                                            onChanged: (newValue) => setState(
                                                () => checkButton6Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'cslhflul' /* Etre ?? deux */,
                                              ),
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Avenir Light ',
                                                color: FlutterFlowTheme
                                                    .customColor7,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.tertiaryColor,
                                            dense: true,
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .trailing,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 0, 40, 0),
                                          ),
                                        ),
                                      ),
                                      AuthUserStreamWidget(
                                        child: Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                            ),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton7Value ??=
                                                currentUserDocument?.qsQ6C7,
                                            onChanged: (newValue) => setState(
                                                () => checkButton7Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'rns6d86d' /* Ma confiance en elle (lui) */,
                                              ),
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Avenir Light ',
                                                color: FlutterFlowTheme
                                                    .customColor7,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.tertiaryColor,
                                            dense: true,
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .trailing,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 0, 40, 0),
                                          ),
                                        ),
                                      ),
                                      AuthUserStreamWidget(
                                        child: Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                            ),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton8Value ??=
                                                currentUserDocument?.qsQ6C8,
                                            onChanged: (newValue) => setState(
                                                () => checkButton8Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ppoaq5g0' /* Son sex-appeal */,
                                              ),
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Avenir Light ',
                                                color: FlutterFlowTheme
                                                    .customColor7,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.tertiaryColor,
                                            dense: true,
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .trailing,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 0, 40, 0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Wrap(
                                    spacing: 0,
                                    runSpacing: 0,
                                    alignment: WrapAlignment.start,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    direction: Axis.horizontal,
                                    runAlignment: WrapAlignment.start,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [
                                      AuthUserStreamWidget(
                                        child: Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                            ),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton9Value ??=
                                                currentUserDocument?.qsQ6C9,
                                            onChanged: (newValue) => setState(
                                                () => checkButton9Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '1b3jsrqr' /* Son amour pour les enfants */,
                                              ),
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Avenir Light ',
                                                color: FlutterFlowTheme
                                                    .customColor7,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.tertiaryColor,
                                            dense: true,
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .trailing,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 0, 40, 0),
                                          ),
                                        ),
                                      ),
                                      AuthUserStreamWidget(
                                        child: Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                            ),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton10Value ??=
                                                currentUserDocument?.qsQ6C10,
                                            onChanged: (newValue) => setState(
                                                () => checkButton10Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'xmtwodpr' /* Le partage */,
                                              ),
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Avenir Light ',
                                                color: FlutterFlowTheme
                                                    .customColor7,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.tertiaryColor,
                                            dense: true,
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .trailing,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 0, 40, 0),
                                          ),
                                        ),
                                      ),
                                      AuthUserStreamWidget(
                                        child: Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                            ),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton11Value ??=
                                                currentUserDocument?.qsQ6C11,
                                            onChanged: (newValue) => setState(
                                                () => checkButton11Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'lotlreau' /* Ses convictions */,
                                              ),
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Avenir Light ',
                                                color: FlutterFlowTheme
                                                    .customColor7,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.tertiaryColor,
                                            dense: true,
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .trailing,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 0, 40, 0),
                                          ),
                                        ),
                                      ),
                                      AuthUserStreamWidget(
                                        child: Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                            ),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton12Value ??=
                                                currentUserDocument?.qsQ6C12,
                                            onChanged: (newValue) => setState(
                                                () => checkButton12Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'kofa4d5x' /* La passion */,
                                              ),
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Avenir Light ',
                                                color: FlutterFlowTheme
                                                    .customColor7,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.tertiaryColor,
                                            dense: true,
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .trailing,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 0, 40, 0),
                                          ),
                                        ),
                                      ),
                                      AuthUserStreamWidget(
                                        child: Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                            ),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton13Value ??=
                                                currentUserDocument?.qsQ6C13,
                                            onChanged: (newValue) => setState(
                                                () => checkButton13Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'df1hj2s2' /* Sa joie de vivre */,
                                              ),
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Avenir Light ',
                                                color: FlutterFlowTheme
                                                    .customColor7,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.tertiaryColor,
                                            dense: true,
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .trailing,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 0, 40, 0),
                                          ),
                                        ),
                                      ),
                                      AuthUserStreamWidget(
                                        child: Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                            ),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton14Value ??=
                                                currentUserDocument?.qsQ6C14,
                                            onChanged: (newValue) => setState(
                                                () => checkButton14Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'nkyeva9d' /* Son apparence physique  */,
                                              ),
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Avenir Light ',
                                                color: FlutterFlowTheme
                                                    .customColor7,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.tertiaryColor,
                                            dense: true,
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .trailing,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 0, 40, 0),
                                          ),
                                        ),
                                      ),
                                      AuthUserStreamWidget(
                                        child: Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                            ),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton15Value ??=
                                                currentUserDocument?.qsQ6C15,
                                            onChanged: (newValue) => setState(
                                                () => checkButton15Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'hvwozygw' /* Notre attirance r??ciproque  */,
                                              ),
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Avenir Light ',
                                                color: FlutterFlowTheme
                                                    .customColor7,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.tertiaryColor,
                                            dense: true,
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .trailing,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 0, 40, 0),
                                          ),
                                        ),
                                      ),
                                      AuthUserStreamWidget(
                                        child: Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                            ),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton16Value ??=
                                                currentUserDocument?.qsQ6C16,
                                            onChanged: (newValue) => setState(
                                                () => checkButton16Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'hkgwkzgl' /* Nos similitudes  */,
                                              ),
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Avenir Light ',
                                                color: FlutterFlowTheme
                                                    .customColor7,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.tertiaryColor,
                                            dense: true,
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .trailing,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 0, 40, 0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.7, 1),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child: SmoothPageIndicator(
                                  controller: pageViewController ??=
                                      PageController(initialPage: 0),
                                  count: 2,
                                  axisDirection: Axis.horizontal,
                                  onDotClicked: (i) {
                                    pageViewController.animateToPage(
                                      i,
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    );
                                  },
                                  effect: ExpandingDotsEffect(
                                    expansionFactor: 2,
                                    spacing: 8,
                                    radius: 16,
                                    dotWidth: 16,
                                    dotHeight: 16,
                                    dotColor: FlutterFlowTheme.customColor9,
                                    activeDotColor:
                                        FlutterFlowTheme.primaryColor,
                                    paintStyle: PaintingStyle.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          final usersUpdateData = createUsersRecordData(
                            qsQ6C1: checkButton1Value,
                            qsQ6C2: checkButton2Value,
                            qsQ6C3: checkButton3Value,
                            qsQ6C4: checkButton4Value,
                            qsQ6C5: checkButton5Value,
                            qsQ6C6: checkButton6Value,
                            qsQ6C7: checkButton7Value,
                            qsQ6C8: checkButton8Value,
                            qsQ6C9: checkButton9Value,
                            qsQ6C10: checkButton10Value,
                            qsQ6C11: checkButton11Value,
                            qsQ6C12: checkButton12Value,
                            qsQ6C13: checkButton13Value,
                            qsQ6C14: checkButton14Value,
                            qsQ6C15: checkButton15Value,
                            qsQ6C16: checkButton16Value,
                          );
                          await currentUserReference.update(usersUpdateData);
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.leftToRight,
                              duration: Duration(milliseconds: 200),
                              reverseDuration: Duration(milliseconds: 200),
                              child: SignupStep10Widget(),
                            ),
                          );
                        },
                        text: FFLocalizations.of(context).getText(
                          'ugei4ejz' /* Continuez
 */
                          ,
                        ),
                        options: FFButtonOptions(
                          width: 200,
                          height: 50,
                          color: FlutterFlowTheme.customColor9,
                          textStyle: FlutterFlowTheme.subtitle2.override(
                            fontFamily: 'Avenir Light ',
                            color: FlutterFlowTheme.secondaryColor,
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
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          final usersUpdateData = createUsersRecordData(
                            qsQ6C1: checkButton1Value,
                            qsQ6C2: checkButton2Value,
                            qsQ6C3: checkButton3Value,
                            qsQ6C4: checkButton4Value,
                            qsQ6C5: checkButton5Value,
                            qsQ6C6: checkButton6Value,
                            qsQ6C7: checkButton7Value,
                            qsQ6C8: checkButton8Value,
                            qsQ6C9: checkButton9Value,
                            qsQ6C10: checkButton10Value,
                            qsQ6C11: checkButton11Value,
                            qsQ6C12: checkButton12Value,
                            qsQ6C13: checkButton13Value,
                            qsQ6C14: checkButton14Value,
                            qsQ6C15: checkButton15Value,
                            qsQ6C16: checkButton16Value,
                          );
                          await currentUserReference.update(usersUpdateData);
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 200),
                              reverseDuration: Duration(milliseconds: 200),
                              child: HomePageWidget(),
                            ),
                          );
                        },
                        text: FFLocalizations.of(context).getText(
                          'hezcwizb' /* ??a suffit pour moi ! */,
                        ),
                        options: FFButtonOptions(
                          width: 200,
                          height: 50,
                          color: FlutterFlowTheme.customColor9,
                          textStyle: FlutterFlowTheme.subtitle2.override(
                            fontFamily: 'Avenir Light ',
                            color: FlutterFlowTheme.secondaryColor,
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
