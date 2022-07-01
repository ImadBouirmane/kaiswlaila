import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/back5_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../qs_page9/qs_page9_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class QsPage8Widget extends StatefulWidget {
  const QsPage8Widget({Key key}) : super(key: key);

  @override
  _QsPage8WidgetState createState() => _QsPage8WidgetState();
}

class _QsPage8WidgetState extends State<QsPage8Widget> {
  TextEditingController rs1Controller;
  TextEditingController rs2Controller;
  TextEditingController rs3Controller;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'QsPage8'});
    rs1Controller = TextEditingController();
    rs2Controller = TextEditingController();
    rs3Controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<UsersRecord>>(
      future: queryUsersRecordOnce(
        singleRecord: true,
      ),
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
        List<UsersRecord> qsPage8UsersRecordList = snapshot.data;
        final qsPage8UsersRecord = qsPage8UsersRecordList.isNotEmpty
            ? qsPage8UsersRecordList.first
            : null;
        return Scaffold(
          key: scaffoldKey,
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/Asset_6@4x.png',
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
                  child: Stack(
                    children: [
                      Back5Widget(),
                      Padding(
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
                                    logFirebaseEvent(
                                        'QS_PAGE8_PAGE_chevron_left_ICN_ON_TAP');
                                    logFirebaseEvent(
                                        'IconButton_Navigate-Back');
                                    Navigator.pop(context);
                                  },
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(-0.5, 0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'ryh79sof' /* Questionnaire */,
                                      ),
                                      style:
                                          FlutterFlowTheme.of(context).title1,
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
                                    percent: 0.9,
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
                                        'vz0jw1ce' /* 90% */,
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
                                    barRadius: Radius.circular(10),
                                    padding: EdgeInsets.zero,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 48),
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      'assets/images/icons8_12_100px.png',
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 70,
                                      decoration: BoxDecoration(),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: AutoSizeText(
                                          FFLocalizations.of(context).getText(
                                            '98yt7fto' /* Quels seraient les 3 points qu... */,
                                          ),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Avenir Light ',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .customColor7,
                                                fontSize: 15,
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
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.looks_one_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 24,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 10),
                                            child: TextFormField(
                                              controller: rs1Controller,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    width: 1.5,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    width: 1.5,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .subtitle1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor5,
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.looks_two,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 24,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 10),
                                            child: TextFormField(
                                              controller: rs2Controller,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    width: 1.5,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    width: 1.5,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .subtitle1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor5,
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.looks_3,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 24,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 10),
                                            child: TextFormField(
                                              controller: rs3Controller,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    width: 1.5,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    width: 1.5,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .subtitle1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor5,
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
                                logFirebaseEvent('QS_PAGE8_PAGE_step4_ON_TAP');
                                logFirebaseEvent('step4_Backend-Call');

                                final usersUpdateData = createUsersRecordData(
                                  qs12TF1: rs1Controller.text,
                                  qs12TF2: rs2Controller.text,
                                  qs12TF3: rs3Controller.text,
                                  progressBar: 0.9,
                                );
                                await currentUserReference
                                    .update(usersUpdateData);
                                logFirebaseEvent('step4_Navigate-To');
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.leftToRight,
                                    duration: Duration(milliseconds: 200),
                                    reverseDuration:
                                        Duration(milliseconds: 200),
                                    child: QsPage9Widget(),
                                  ),
                                );
                              },
                              text: FFLocalizations.of(context).getText(
                                'sds7x7o4' /* Continuer
 */
                                ,
                              ),
                              options: FFButtonOptions(
                                width: 200,
                                height: 50,
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
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
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'QS_PAGE8_PAGE_step4_ON_TAP');
                                  logFirebaseEvent('step4_Backend-Call');

                                  final usersUpdateData = createUsersRecordData(
                                    qs12TF1: rs1Controller.text,
                                    qs12TF2: rs2Controller.text,
                                    qs12TF3: rs3Controller.text,
                                  );
                                  await currentUserReference
                                      .update(usersUpdateData);
                                  logFirebaseEvent('step4_Navigate-To');
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 200),
                                      reverseDuration:
                                          Duration(milliseconds: 200),
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
                                  color: FlutterFlowTheme.of(context)
                                      .tertiaryColor,
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
                            ),
                          ],
                        ),
                      ),
                    ],
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
