import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../signup_step15/signup_step15_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SignupStep14Widget extends StatefulWidget {
  const SignupStep14Widget({Key key}) : super(key: key);

  @override
  _SignupStep14WidgetState createState() => _SignupStep14WidgetState();
}

class _SignupStep14WidgetState extends State<SignupStep14Widget> {
  TextEditingController rs1Controller;
  TextEditingController rs2Controller;
  TextEditingController rs3Controller;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    rs1Controller = TextEditingController();
    rs2Controller = TextEditingController();
    rs3Controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Container(
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
                          'ryh79sof' /* Questionnaire */,
                        ),
                        style: FlutterFlowTheme.title1,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 30),
                    child: LinearPercentIndicator(
                        percent: 0.9,
                        width: MediaQuery.of(context).size.width * 0.7,
                        lineHeight: 24,
                        animation: true,
                        progressColor: FlutterFlowTheme.primaryColor,
                        backgroundColor: Color(0xFFF1F4F8),
                        center: Text(
                          FFLocalizations.of(context).getText(
                            'vz0jw1ce' /* 90% */,
                          ),
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Avenir Light ',
                            color: FlutterFlowTheme.tertiaryColor,
                            useGoogleFonts: false,
                          ),
                        ),
                        barRadius: Radius.circular(10)),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                    child: Container(
                      width: double.infinity,
                      height: 70,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: AutoSizeText(
                          FFLocalizations.of(context).getText(
                            '98yt7fto' /* Quels seraient les 3 points qu... */,
                          ),
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.subtitle1.override(
                            fontFamily: 'Avenir Light ',
                            color: FlutterFlowTheme.customColor7,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: false,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: Wrap(
                      spacing: 0,
                      runSpacing: 0,
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      direction: Axis.horizontal,
                      runAlignment: WrapAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      clipBehavior: Clip.none,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.looks_one_rounded,
                                color: FlutterFlowTheme.primaryColor,
                                size: 24,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 10),
                                  child: TextFormField(
                                    controller: rs1Controller,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.primaryColor,
                                          width: 1.5,
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.primaryColor,
                                          width: 1.5,
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.subtitle1.override(
                                      fontFamily: 'Avenir Light ',
                                      color: FlutterFlowTheme.customColor5,
                                      fontSize: 16,
                                      useGoogleFonts: false,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.looks_two,
                                color: FlutterFlowTheme.primaryColor,
                                size: 24,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 10),
                                  child: TextFormField(
                                    controller: rs2Controller,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.primaryColor,
                                          width: 1.5,
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.primaryColor,
                                          width: 1.5,
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.subtitle1.override(
                                      fontFamily: 'Avenir Light ',
                                      color: FlutterFlowTheme.customColor5,
                                      fontSize: 16,
                                      useGoogleFonts: false,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.looks_3,
                                color: FlutterFlowTheme.primaryColor,
                                size: 24,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 10),
                                  child: TextFormField(
                                    controller: rs3Controller,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.primaryColor,
                                          width: 1.5,
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.primaryColor,
                                          width: 1.5,
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.subtitle1.override(
                                      fontFamily: 'Avenir Light ',
                                      color: FlutterFlowTheme.customColor5,
                                      fontSize: 16,
                                      useGoogleFonts: false,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  FFButtonWidget(
                    onPressed: () async {
                      final usersUpdateData = createUsersRecordData(
                        qsQ13R1: rs1Controller.text,
                        qsQ13R2: rs2Controller.text,
                        qsQ13R3: rs3Controller.text,
                      );
                      await currentUserReference.update(usersUpdateData);
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRight,
                          duration: Duration(milliseconds: 200),
                          reverseDuration: Duration(milliseconds: 200),
                          child: SignupStep15Widget(),
                        ),
                      );
                    },
                    text: FFLocalizations.of(context).getText(
                      'sds7x7o4' /* Continuez
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
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        final usersUpdateData = createUsersRecordData(
                          qsQ13R1: rs1Controller.text,
                          qsQ13R2: rs2Controller.text,
                          qsQ13R3: rs3Controller.text,
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
                        'yowkqpii' /* Ça suffit pour moi ! */,
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
    );
  }
}
