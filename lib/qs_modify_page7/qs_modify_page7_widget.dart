import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../qs_modify_page8/qs_modify_page8_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class QsModifyPage7Widget extends StatefulWidget {
  const QsModifyPage7Widget({Key key}) : super(key: key);

  @override
  _QsModifyPage7WidgetState createState() => _QsModifyPage7WidgetState();
}

class _QsModifyPage7WidgetState extends State<QsModifyPage7Widget> {
  String radioButtonValue1;
  String radioButtonValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<UsersRecord>(
      future: UsersRecord.getDocumentOnce(currentUserReference),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 30,
              height: 30,
              child: SpinKitFadingCircle(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 30,
              ),
            ),
          );
        }
        final qsModifyPage7UsersRecord = snapshot.data;
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
                    'assets/images/Asset_2@4x.png',
                  ).image,
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 50, 10, 30),
                child: Material(
                  color: Colors.transparent,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 60,
                                icon: Icon(
                                  Icons.chevron_left,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                onPressed: () async {
                                  Navigator.pop(context);
                                },
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(-0.5, 0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '2mk7jma5' /* Questionnaire */,
                                    ),
                                    style: FlutterFlowTheme.of(context).title1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                LinearPercentIndicator(
                                    percent: 0.8,
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    lineHeight: 24,
                                    animation: true,
                                    progressColor: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .customColor10,
                                    center: Text(
                                      FFLocalizations.of(context).getText(
                                        '4ykhfcl7' /* 80% */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Avenir Light ',
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    barRadius: Radius.circular(10)),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/icons8_10_100px.png',
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 10, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 40,
                                    decoration: BoxDecoration(),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 0, 0),
                                      child: AutoSizeText(
                                        FFLocalizations.of(context).getText(
                                          'qd68k7au' /* Je suis spontané(e) */,
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1
                                            .override(
                                              fontFamily: 'Avenir Light ',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .customColor7,
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
                          Align(
                            alignment: AlignmentDirectional(-0.7, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                              child: FlutterFlowRadioButton(
                                options: [
                                  FFLocalizations.of(context).getText(
                                    '96boaf26' /* Pas du tout */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'i29dkb24' /* Pas vraiment */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'e4feij85' /* Vraiment */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    '3jmiuwtw' /* Tout à fait */,
                                  )
                                ],
                                onChanged: (value) {
                                  setState(() => radioButtonValue1 = value);
                                },
                                optionHeight: 25,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Avenir Light ',
                                      color: Colors.black,
                                      useGoogleFonts: false,
                                    ),
                                selectedTextStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Avenir Light ',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: false,
                                    ),
                                textPadding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                buttonPosition: RadioButtonPosition.left,
                                direction: Axis.vertical,
                                radioButtonColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                inactiveRadioButtonColor: Color(0x8A000000),
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.start,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/icons8_11_100px.png',
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 10, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    decoration: BoxDecoration(),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 0, 0),
                                      child: AutoSizeText(
                                        FFLocalizations.of(context).getText(
                                          'lhiac4d8' /* Il est facile pour moi de disc... */,
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1
                                            .override(
                                              fontFamily: 'Avenir Light ',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .customColor7,
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
                          Align(
                            alignment: AlignmentDirectional(-0.7, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
                              child: FlutterFlowRadioButton(
                                options: [
                                  FFLocalizations.of(context).getText(
                                    'y627e74r' /* Pas du tout */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    '2dp4ibj3' /* Pas vraiment */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'ai05jeeo' /* Vraiment */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    '7snzivoa' /* Tout à fait */,
                                  )
                                ],
                                onChanged: (value) {
                                  setState(() => radioButtonValue2 = value);
                                },
                                optionHeight: 25,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Avenir Light ',
                                      color: Colors.black,
                                      useGoogleFonts: false,
                                    ),
                                selectedTextStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Avenir Light ',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: false,
                                    ),
                                textPadding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                buttonPosition: RadioButtonPosition.left,
                                direction: Axis.vertical,
                                radioButtonColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                inactiveRadioButtonColor: Color(0x8A000000),
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.start,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                          ),
                          Spacer(),
                          FFButtonWidget(
                            onPressed: () async {
                              final usersUpdateData = createUsersRecordData(
                                qs11Choice: radioButtonValue2,
                                qs10Choice: radioButtonValue1,
                                progressBar: 0.8,
                              );
                              await currentUserReference
                                  .update(usersUpdateData);
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.leftToRight,
                                  duration: Duration(milliseconds: 200),
                                  reverseDuration: Duration(milliseconds: 200),
                                  child: QsModifyPage8Widget(),
                                ),
                              );
                            },
                            text: FFLocalizations.of(context).getText(
                              'isnih24w' /* Continuer
 */
                              ,
                            ),
                            options: FFButtonOptions(
                              width: 200,
                              height: 50,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Avenir Light ',
                                    color: FlutterFlowTheme.of(context)
                                        .customColor7,
                                    fontWeight: FontWeight.bold,
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
          ),
        );
      },
    );
  }
}
