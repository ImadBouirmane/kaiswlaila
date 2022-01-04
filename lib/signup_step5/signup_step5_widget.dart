import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../signup_step4/signup_step4_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SignupStep5Widget extends StatefulWidget {
  const SignupStep5Widget({Key key}) : super(key: key);

  @override
  _SignupStep5WidgetState createState() => _SignupStep5WidgetState();
}

class _SignupStep5WidgetState extends State<SignupStep5Widget> {
  PageController pageViewController;
  String radioButtonValue1;
  String radioButtonValue2;
  String radioButtonValue3;
  String radioButtonValue4;
  bool checkboxListTileValue1;
  bool checkboxListTileValue2;
  bool checkboxListTileValue3;
  bool checkboxListTileValue4;
  bool checkboxListTileValue5;
  bool checkboxListTileValue6;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.chevron_left_outlined,
                        color: FlutterFlowTheme.primaryColor,
                        size: 30,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(-0.2, 0),
                        child: Container(
                          width: 50,
                          height: 50,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/ufpbn_1.jpg',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Questionnaire',
                      style: FlutterFlowTheme.subtitle1,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        PageView(
                          controller: pageViewController ??=
                              PageController(initialPage: 0),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.tertiaryColor,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 10, 0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 10),
                                            child: Icon(
                                              Icons.looks_one,
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              size: 30,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 0),
                                            child: Text(
                                              'Il est important pour moi de maintenir les valeurs\n ou les croyances traditionnelles :\n',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme
                                                    .customColor4,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-0.7, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 20),
                                      child: FlutterFlowRadioButton(
                                        options: [
                                          'Pas du tout',
                                          'Pas vraiment',
                                          'Vraiment',
                                          'Tout à fait \n'
                                        ],
                                        onChanged: (value) {
                                          setState(
                                              () => radioButtonValue1 = value);
                                        },
                                        optionHeight: 25,
                                        textStyle:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                        ),
                                        selectedTextStyle:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.primaryColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.vertical,
                                        radioButtonColor:
                                            FlutterFlowTheme.primaryColor,
                                        inactiveRadioButtonColor:
                                            Color(0x8A000000),
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 10, 0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 10),
                                            child: Icon(
                                              Icons.looks_two_rounded,
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              size: 30,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 0),
                                            child: Text(
                                              'Il est important pour moi de prendre mes propres\n décisions en ce qui concerne ma vie :\n\n',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme
                                                    .customColor4,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-0.7, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 20),
                                      child: FlutterFlowRadioButton(
                                        options: [
                                          'Pas du tout',
                                          'Pas vraiment',
                                          'Vraiment',
                                          'Tout à fait \n'
                                        ],
                                        onChanged: (value) {
                                          setState(
                                              () => radioButtonValue2 = value);
                                        },
                                        optionHeight: 25,
                                        textStyle:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                        ),
                                        selectedTextStyle:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.primaryColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.vertical,
                                        radioButtonColor:
                                            FlutterFlowTheme.primaryColor,
                                        inactiveRadioButtonColor:
                                            Color(0x8A000000),
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 10, 0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 10),
                                            child: Icon(
                                              Icons.looks_3,
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              size: 30,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 0),
                                            child: Text(
                                              'Il est important pour moi d’être la personne la plus\n influente dans un couple :\n\n',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme
                                                    .customColor4,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-0.7, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 20),
                                      child: FlutterFlowRadioButton(
                                        options: [
                                          'Pas du tout',
                                          'Pas vraiment',
                                          'Vraiment',
                                          'Tout à fait \n'
                                        ],
                                        onChanged: (value) {
                                          setState(
                                              () => radioButtonValue3 = value);
                                        },
                                        optionHeight: 25,
                                        textStyle:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                        ),
                                        selectedTextStyle:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.primaryColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.vertical,
                                        radioButtonColor:
                                            FlutterFlowTheme.primaryColor,
                                        inactiveRadioButtonColor:
                                            Color(0x8A000000),
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.tertiaryColor,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 10, 0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 10),
                                            child: Icon(
                                              Icons.looks_4,
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              size: 30,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 0),
                                            child: Text(
                                              'Il est important pour moi de suivre les règles même\nquand personne ne surveille :\n',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme
                                                    .customColor4,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-0.7, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 20),
                                      child: FlutterFlowRadioButton(
                                        options: [
                                          'Pas du tout',
                                          'Pas vraiment',
                                          'Vraiment',
                                          'Tout à fait \n'
                                        ],
                                        onChanged: (value) {
                                          setState(
                                              () => radioButtonValue4 = value);
                                        },
                                        optionHeight: 25,
                                        textStyle:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                        ),
                                        selectedTextStyle:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.primaryColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.vertical,
                                        radioButtonColor:
                                            FlutterFlowTheme.primaryColor,
                                        inactiveRadioButtonColor:
                                            Color(0x8A000000),
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 10, 0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 10),
                                            child: Icon(
                                              Icons.looks_5,
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              size: 30,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 10, 0, 0),
                                            child: Text(
                                              'Le plus important dans une relation ? (3 choix)\n\n\n',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme
                                                    .customColor4,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 20),
                                    child: Wrap(
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
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            AuthUserStreamWidget(
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                    ),
                                                  ),
                                                ),
                                                child: CheckboxListTile(
                                                  value:
                                                      checkboxListTileValue1 ??=
                                                          !(currentUserDocument
                                                              ?.qs5c1),
                                                  onChanged: (newValue) =>
                                                      setState(() =>
                                                          checkboxListTileValue1 =
                                                              newValue),
                                                  title: Text(
                                                    'La passion',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                  tileColor: FlutterFlowTheme
                                                      .primaryColor,
                                                  activeColor: FlutterFlowTheme
                                                      .primaryColor,
                                                  checkColor: FlutterFlowTheme
                                                      .tertiaryColor,
                                                  dense: true,
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                              50, 0, 80, 0),
                                                ),
                                              ),
                                            ),
                                            AuthUserStreamWidget(
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                    ),
                                                  ),
                                                ),
                                                child: CheckboxListTile(
                                                  value:
                                                      checkboxListTileValue2 ??=
                                                          currentUserDocument
                                                              ?.qs5c2,
                                                  onChanged: (newValue) =>
                                                      setState(() =>
                                                          checkboxListTileValue2 =
                                                              newValue),
                                                  title: Text(
                                                    'L\'amour',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                  tileColor: FlutterFlowTheme
                                                      .primaryColor,
                                                  activeColor: FlutterFlowTheme
                                                      .primaryColor,
                                                  checkColor: FlutterFlowTheme
                                                      .tertiaryColor,
                                                  dense: true,
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                              50, 0, 80, 0),
                                                ),
                                              ),
                                            ),
                                            AuthUserStreamWidget(
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                    ),
                                                  ),
                                                ),
                                                child: CheckboxListTile(
                                                  value:
                                                      checkboxListTileValue3 ??=
                                                          currentUserDocument
                                                              ?.qs5c3,
                                                  onChanged: (newValue) =>
                                                      setState(() =>
                                                          checkboxListTileValue3 =
                                                              newValue),
                                                  title: Text(
                                                    'La complicité',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                  tileColor: FlutterFlowTheme
                                                      .primaryColor,
                                                  activeColor: FlutterFlowTheme
                                                      .primaryColor,
                                                  checkColor: FlutterFlowTheme
                                                      .tertiaryColor,
                                                  dense: true,
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                              50, 0, 80, 0),
                                                ),
                                              ),
                                            ),
                                            AuthUserStreamWidget(
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                    ),
                                                  ),
                                                ),
                                                child: CheckboxListTile(
                                                  value:
                                                      checkboxListTileValue4 ??=
                                                          currentUserDocument
                                                              ?.qs5c4,
                                                  onChanged: (newValue) =>
                                                      setState(() =>
                                                          checkboxListTileValue4 =
                                                              newValue),
                                                  title: Text(
                                                    'La loyauté',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                  tileColor: FlutterFlowTheme
                                                      .primaryColor,
                                                  activeColor: FlutterFlowTheme
                                                      .primaryColor,
                                                  checkColor: FlutterFlowTheme
                                                      .tertiaryColor,
                                                  dense: true,
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .trailing,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                              50, 0, 80, 0),
                                                ),
                                              ),
                                            ),
                                            Theme(
                                              data: ThemeData(
                                                checkboxTheme:
                                                    CheckboxThemeData(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                  ),
                                                ),
                                              ),
                                              child: CheckboxListTile(
                                                value:
                                                    checkboxListTileValue5 ??=
                                                        false,
                                                onChanged: (newValue) =>
                                                    setState(() =>
                                                        checkboxListTileValue5 =
                                                            newValue),
                                                title: Text(
                                                  'La fidélité',
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                tileColor: FlutterFlowTheme
                                                    .primaryColor,
                                                activeColor: FlutterFlowTheme
                                                    .primaryColor,
                                                checkColor: FlutterFlowTheme
                                                    .tertiaryColor,
                                                dense: true,
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .trailing,
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(50, 0, 80, 0),
                                              ),
                                            ),
                                            Theme(
                                              data: ThemeData(
                                                checkboxTheme:
                                                    CheckboxThemeData(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                  ),
                                                ),
                                              ),
                                              child: CheckboxListTile(
                                                value:
                                                    checkboxListTileValue6 ??=
                                                        false,
                                                onChanged: (newValue) =>
                                                    setState(() =>
                                                        checkboxListTileValue6 =
                                                            newValue),
                                                title: Text(
                                                  'La transparence',
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                tileColor: FlutterFlowTheme
                                                    .primaryColor,
                                                activeColor: FlutterFlowTheme
                                                    .primaryColor,
                                                checkColor: FlutterFlowTheme
                                                    .tertiaryColor,
                                                dense: true,
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .trailing,
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(50, 0, 80, 0),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.8, 1),
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
                                dotWidth: 12,
                                dotHeight: 12,
                                dotColor: Color(0xFF9E9E9E),
                                activeDotColor: FlutterFlowTheme.primaryColor,
                                paintStyle: PaintingStyle.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  final usersUpdateData = createUsersRecordData();
                  await currentUserReference.update(usersUpdateData);
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.leftToRight,
                      duration: Duration(milliseconds: 200),
                      reverseDuration: Duration(milliseconds: 200),
                      child: SignupStep4Widget(),
                    ),
                  );
                },
                text: 'Continuez',
                options: FFButtonOptions(
                  width: 200,
                  height: 50,
                  color: FlutterFlowTheme.primaryColor,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
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
    );
  }
}
