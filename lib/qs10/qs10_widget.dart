import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Qs10Widget extends StatefulWidget {
  const Qs10Widget({Key key}) : super(key: key);

  @override
  _Qs10WidgetState createState() => _Qs10WidgetState();
}

class _Qs10WidgetState extends State<Qs10Widget> {
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
  bool checkButton17Value;
  bool checkButton18Value;
  bool checkButton19Value;
  bool checkButton20Value;
  bool checkButton21Value;
  bool checkButton22Value;
  bool checkButton23Value;
  bool checkButton24Value;
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
            image: DecorationImage(
              fit: BoxFit.none,
              image: Image.asset(
                'assets/images/Asset_5@4x.png',
              ).image,
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
                            'f7d52jsx' /* Questionnaire */,
                          ),
                          style: FlutterFlowTheme.of(context).title1,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
                      child: LinearPercentIndicator(
                          percent: 1,
                          width: MediaQuery.of(context).size.width * 0.7,
                          lineHeight: 24,
                          animation: true,
                          progressColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          backgroundColor:
                              FlutterFlowTheme.of(context).customColor10,
                          center: Text(
                            FFLocalizations.of(context).getText(
                              'wap37wq3' /* 100% */,
                            ),
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Avenir Light ',
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      useGoogleFonts: false,
                                    ),
                          ),
                          barRadius: Radius.circular(10)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: Container(
                            width: 30,
                            height: 30,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/icons8_14_100px.png',
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: AutoSizeText(
                                  FFLocalizations.of(context).getText(
                                    'fvjwmkyq' /* Vos centres d’intérêts ? 
Veui... */
                                    ,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle1
                                      .override(
                                        fontFamily: 'Avenir Light ',
                                        color: FlutterFlowTheme.of(context)
                                            .customColor7,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton1Value ??=
                                                currentUserDocument?.qsQ10C1,
                                            onChanged: (newValue) => setState(
                                                () => checkButton1Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'bcriaovm' /* A l’écoute */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton2Value ??=
                                                currentUserDocument?.qsQ10C2,
                                            onChanged: (newValue) => setState(
                                                () => checkButton2Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '1b69xkeh' /* Spontané(e) */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton3Value ??=
                                                currentUserDocument?.qsQ10C3,
                                            onChanged: (newValue) => setState(
                                                () => checkButton3Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'o8g72l2a' /* Optimiste */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton4Value ??=
                                                currentUserDocument?.qsQ10C4,
                                            onChanged: (newValue) => setState(
                                                () => checkButton4Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '9mmobbwo' /* Lunatique */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton5Value ??=
                                                currentUserDocument?.qsQ10C5,
                                            onChanged: (newValue) => setState(
                                                () => checkButton5Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '6zuig7ie' /* Rêveur(se) */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton6Value ??=
                                                currentUserDocument?.qsQ10C6,
                                            onChanged: (newValue) => setState(
                                                () => checkButton6Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'v5qn3fub' /* Calme */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton7Value ??=
                                                currentUserDocument?.qsQ10C7,
                                            onChanged: (newValue) => setState(
                                                () => checkButton7Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'kvcpiopt' /* Empatique */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton8Value ??=
                                                currentUserDocument?.qsQ10C8,
                                            onChanged: (newValue) => setState(
                                                () => checkButton8Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'mpczer9p' /* Fidèle  */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton9Value ??=
                                                currentUserDocument?.qsQ10C9,
                                            onChanged: (newValue) => setState(
                                                () => checkButton9Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '9tg8y4mt' /* Logique */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton10Value ??=
                                                currentUserDocument?.qsQ10C10,
                                            onChanged: (newValue) => setState(
                                                () => checkButton10Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'e9b53ogp' /* Joyeux(se) */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton11Value ??=
                                                currentUserDocument?.qsQ10C11,
                                            onChanged: (newValue) => setState(
                                                () => checkButton11Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'fq14vgiq' /* Sensible */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton12Value ??=
                                                currentUserDocument?.qsQ10C12,
                                            onChanged: (newValue) => setState(
                                                () => checkButton12Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'nfxkmeyr' /* Engagé(e) */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton13Value ??=
                                                currentUserDocument?.qsQ10C13,
                                            onChanged: (newValue) => setState(
                                                () => checkButton13Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ufngl24j' /* Travailleur(se) */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton14Value ??=
                                                currentUserDocument?.qsQ10C14,
                                            onChanged: (newValue) => setState(
                                                () => checkButton14Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'nmuj304q' /* Charmeur(se) */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton15Value ??=
                                                currentUserDocument?.qsQ10C15,
                                            onChanged: (newValue) => setState(
                                                () => checkButton15Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '2m9ua26w' /* Energique */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton16Value ??=
                                                currentUserDocument?.qsQ10C16,
                                            onChanged: (newValue) => setState(
                                                () => checkButton16Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'g4j102fc' /* Rebel(le) */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton17Value ??=
                                                currentUserDocument?.qsQ10C17,
                                            onChanged: (newValue) => setState(
                                                () => checkButton17Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '6bxnkp8e' /* Enthousiaste */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton18Value ??=
                                                currentUserDocument?.qsQ10C18,
                                            onChanged: (newValue) => setState(
                                                () => checkButton18Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ow6h3s22' /* Consciencieux(se) */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton19Value ??=
                                                currentUserDocument?.qsQ10C19,
                                            onChanged: (newValue) => setState(
                                                () => checkButton19Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'nz2aay4c' /* Chaleureux(se) */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton20Value ??=
                                                currentUserDocument?.qsQ10C20,
                                            onChanged: (newValue) => setState(
                                                () => checkButton20Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '7ydot8ax' /* Prend des risques */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton21Value ??=
                                                currentUserDocument?.qsQ10C21,
                                            onChanged: (newValue) => setState(
                                                () => checkButton21Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '9j9gwgp1' /* Respectueux(se) */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton22Value ??=
                                                currentUserDocument?.qsQ10C22,
                                            onChanged: (newValue) => setState(
                                                () => checkButton22Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'vrhk6bbq' /* En bonne forme physique */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton23Value ??=
                                                currentUserDocument?.qsQ10C23,
                                            onChanged: (newValue) => setState(
                                                () => checkButton23Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ygouqb4k' /* Digne de confiance */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                            unselectedWidgetColor:
                                                Color(0xFF707070),
                                          ),
                                          child: CheckboxListTile(
                                            value: checkButton24Value ??=
                                                currentUserDocument?.qsQ10C24,
                                            onChanged: (newValue) => setState(
                                                () => checkButton24Value =
                                                    newValue),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '8iv2y19p' /* Compatissant(e) */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor7,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
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
                                  count: 3,
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
                                    dotColor: FlutterFlowTheme.of(context)
                                        .customColor9,
                                    activeDotColor: FlutterFlowTheme.of(context)
                                        .primaryColor,
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
                      padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          final usersUpdateData = createUsersRecordData(
                            qsQ10C1: checkButton1Value,
                            qsQ10C2: checkButton2Value,
                            qsQ10C3: checkButton3Value,
                            qsQ10C4: checkButton4Value,
                            qsQ10C5: checkButton5Value,
                            qsQ10C6: checkButton6Value,
                            qsQ10C7: checkButton7Value,
                            qsQ10C8: checkButton8Value,
                            qsQ10C9: checkButton9Value,
                            qsQ10C10: checkButton10Value,
                            qsQ10C11: checkButton11Value,
                            qsQ10C12: checkButton12Value,
                            qsQ10C13: checkButton13Value,
                            qsQ10C14: checkButton14Value,
                            qsQ10C15: checkButton15Value,
                            qsQ10C16: checkButton16Value,
                            qsQ10C17: checkButton17Value,
                            qsQ10C18: checkButton18Value,
                            qsQ10C19: checkButton19Value,
                            qsQ10C20: checkButton20Value,
                            qsQ10C21: checkButton21Value,
                            qsQ10C22: checkButton22Value,
                            qsQ10C23: checkButton23Value,
                            qsQ10C24: checkButton24Value,
                          );
                          await currentUserReference.update(usersUpdateData);
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.leftToRight,
                              duration: Duration(milliseconds: 200),
                              reverseDuration: Duration(milliseconds: 200),
                              child: HomePageWidget(),
                            ),
                          );
                        },
                        text: FFLocalizations.of(context).getText(
                          'e4kbt0wy' /* Continuez
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
