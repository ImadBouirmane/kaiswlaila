import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../qs_modify_page6/qs_modify_page6_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class QsModifyPage5Widget extends StatefulWidget {
  const QsModifyPage5Widget({Key key}) : super(key: key);

  @override
  _QsModifyPage5WidgetState createState() => _QsModifyPage5WidgetState();
}

class _QsModifyPage5WidgetState extends State<QsModifyPage5Widget> {
  String radioButton8Value;
  String radioButton9Value;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'QsModifyPage5'});
  }

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
        final qsModifyPage5UsersRecord = snapshot.data;
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
                                  logFirebaseEvent(
                                      'QS_MODIFY_PAGE5_chevron_left_ICN_ON_TAP');
                                  logFirebaseEvent('IconButton_Navigate-Back');
                                  Navigator.pop(context);
                                },
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(-0.5, 0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'owsdkjnr' /* Questionnaire */,
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
                                  percent: 0.6,
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  lineHeight: 24,
                                  animation: true,
                                  progressColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  backgroundColor: FlutterFlowTheme.of(context)
                                      .customColor10,
                                  center: Text(
                                    FFLocalizations.of(context).getText(
                                      '2ynuaig3' /* 60% */,
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
                                    'assets/images/icons8_7_60px.png',
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
                                          'sohrw0zk' /* Quel est votre niveau d’études... */,
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
                                    '07abpqai' /* Sans diplôme */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'w215zwmk' /* Collège */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    '0x2lp32a' /* BAC ou BAC PRO */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'thu8cxhz' /* BAC +2 /BAC +3 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'fcmfhh6b' /* BAC +4 / BAC +5 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'tkqsmrlk' /* Doctorat */,
                                  )
                                ].toList(),
                                onChanged: (value) {
                                  setState(() => radioButton8Value = value);
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
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 19),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/icons8_8_key_60px.png',
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
                                          '4m7n8ud8' /* Quelle importance attachez-vou... */,
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
                                    'yu3ss2rt' /* Aucune importance */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'qdeflx5u' /* Peu important */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'o0bznh2a' /* Important */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'ba8pmla6' /* Plutôt important */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'sap64knb' /* Vraiment important */,
                                  )
                                ].toList(),
                                onChanged: (value) {
                                  setState(() => radioButton9Value = value);
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
                              logFirebaseEvent(
                                  'QS_MODIFY_PAGE5_PAGE_step4_ON_TAP');
                              logFirebaseEvent('step4_Backend-Call');

                              final usersUpdateData = createUsersRecordData(
                                qs7Choice: radioButton8Value,
                                qs8Choice: radioButton9Value,
                                progressBar: 0.6,
                              );
                              await currentUserReference
                                  .update(usersUpdateData);
                              logFirebaseEvent('step4_Navigate-To');
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.leftToRight,
                                  duration: Duration(milliseconds: 200),
                                  reverseDuration: Duration(milliseconds: 200),
                                  child: QsModifyPage6Widget(),
                                ),
                              );
                            },
                            text: FFLocalizations.of(context).getText(
                              'kaf0uhq8' /* Continuer
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
