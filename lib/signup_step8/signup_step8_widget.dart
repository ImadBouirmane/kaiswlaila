import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../signup_step9/signup_step9_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SignupStep8Widget extends StatefulWidget {
  const SignupStep8Widget({Key key}) : super(key: key);

  @override
  _SignupStep8WidgetState createState() => _SignupStep8WidgetState();
}

class _SignupStep8WidgetState extends State<SignupStep8Widget> {
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
                            'mc942bqj' /* Questionnaire */,
                          ),
                          style: FlutterFlowTheme.title1,
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
                          progressColor: FlutterFlowTheme.primaryColor,
                          backgroundColor: Color(0xFFF1F4F8),
                          center: Text(
                            FFLocalizations.of(context).getText(
                              'pe7k4a3w' /* 20% */,
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
                              'jz9ayuiz' /* Le plus important dans une rel... */,
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
                    AuthUserStreamWidget(
                      child: Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
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
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Avenir Light ',
                              color: FlutterFlowTheme.customColor7,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                          ),
                          tileColor: FlutterFlowTheme.primaryColor,
                          activeColor: FlutterFlowTheme.primaryColor,
                          checkColor: FlutterFlowTheme.tertiaryColor,
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
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Avenir Light ',
                              color: FlutterFlowTheme.customColor7,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                          ),
                          tileColor: FlutterFlowTheme.primaryColor,
                          activeColor: FlutterFlowTheme.primaryColor,
                          checkColor: FlutterFlowTheme.tertiaryColor,
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
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Avenir Light ',
                              color: FlutterFlowTheme.customColor7,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                          ),
                          tileColor: FlutterFlowTheme.primaryColor,
                          activeColor: FlutterFlowTheme.primaryColor,
                          checkColor: FlutterFlowTheme.tertiaryColor,
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
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Avenir Light ',
                              color: FlutterFlowTheme.customColor7,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                          ),
                          tileColor: FlutterFlowTheme.primaryColor,
                          activeColor: FlutterFlowTheme.primaryColor,
                          checkColor: FlutterFlowTheme.tertiaryColor,
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
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Avenir Light ',
                              color: FlutterFlowTheme.customColor7,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                          ),
                          tileColor: FlutterFlowTheme.primaryColor,
                          activeColor: FlutterFlowTheme.primaryColor,
                          checkColor: FlutterFlowTheme.tertiaryColor,
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
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Avenir Light ',
                              color: FlutterFlowTheme.customColor7,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                          ),
                          tileColor: FlutterFlowTheme.primaryColor,
                          activeColor: FlutterFlowTheme.primaryColor,
                          checkColor: FlutterFlowTheme.tertiaryColor,
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
                        ),
                        child: CheckboxListTile(
                          value: checkButton7Value ??=
                              currentUserDocument?.qsQ5C7,
                          onChanged: (newValue) =>
                              setState(() => checkButton7Value = newValue),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              '41hacv6d' /* l’authenticité  */,
                            ),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Avenir Light ',
                              color: FlutterFlowTheme.customColor7,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                          ),
                          tileColor: FlutterFlowTheme.primaryColor,
                          activeColor: FlutterFlowTheme.primaryColor,
                          checkColor: FlutterFlowTheme.tertiaryColor,
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
                            child: SignupStep9Widget(),
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
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 200),
                              reverseDuration: Duration(milliseconds: 200),
                              child: HomePageWidget(),
                            ),
                          );
                        },
                        text: FFLocalizations.of(context).getText(
                          'yikvi26f' /* Ça suffit pour moi ! */,
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
