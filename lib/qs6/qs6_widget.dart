import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../qs7/qs7_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Qs6Widget extends StatefulWidget {
  const Qs6Widget({Key key}) : super(key: key);

  @override
  _Qs6WidgetState createState() => _Qs6WidgetState();
}

class _Qs6WidgetState extends State<Qs6Widget> {
  String radioButton8Value;
  String radioButton9Value;
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
                'assets/images/Asset_6@4x.png',
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
                            '268nm25r' /* Questionnaire */,
                          ),
                          style: FlutterFlowTheme.of(context).title1,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 30),
                      child: LinearPercentIndicator(
                          percent: 0.6,
                          width: MediaQuery.of(context).size.width * 0.7,
                          lineHeight: 24,
                          animation: true,
                          progressColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          backgroundColor:
                              FlutterFlowTheme.of(context).customColor10,
                          center: Text(
                            FFLocalizations.of(context).getText(
                              '8tb2kgag' /* 60% */,
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
                              'assets/images/icons8_8_key_60px.png',
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                            child: Container(
                              width: double.infinity,
                              height: 40,
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: AutoSizeText(
                                  FFLocalizations.of(context).getText(
                                    'rgdesdex' /* Quel est votre niveau d’études... */,
                                  ),
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle1
                                      .override(
                                        fontFamily: 'Avenir Light ',
                                        color: FlutterFlowTheme.of(context)
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
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: AuthUserStreamWidget(
                          child: FlutterFlowRadioButton(
                            options: [
                              FFLocalizations.of(context).getText(
                                'p9swrnq5' /* Sans diplôme */,
                              ),
                              FFLocalizations.of(context).getText(
                                'ruwhy5ui' /* Collège */,
                              ),
                              FFLocalizations.of(context).getText(
                                'z0kbrf7f' /* BAC ou BAC PRO */,
                              ),
                              FFLocalizations.of(context).getText(
                                'lbmcfc27' /* BAC +2 /BAC +3 */,
                              ),
                              FFLocalizations.of(context).getText(
                                '0dfcrqgn' /* BAC +4 / BAC +5 */,
                              ),
                              FFLocalizations.of(context).getText(
                                '21btpdlo' /* Doctorat */,
                              )
                            ],
                            onChanged: (value) {
                              setState(() => radioButton8Value = value);
                            },
                            optionHeight: 25,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Avenir Light ',
                                      color: Colors.black,
                                      useGoogleFonts: false,
                                    ),
                            selectedTextStyle: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Avenir Light ',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
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
                              'assets/images/icons8_9_key_60px.png',
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
                                    'benq6kct' /* Quelle importance attachez-vou... */,
                                  ),
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle1
                                      .override(
                                        fontFamily: 'Avenir Light ',
                                        color: FlutterFlowTheme.of(context)
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
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: AuthUserStreamWidget(
                          child: FlutterFlowRadioButton(
                            options: [
                              FFLocalizations.of(context).getText(
                                'whih40fe' /* Aucune importance */,
                              ),
                              FFLocalizations.of(context).getText(
                                'm68w14bg' /* Peu important */,
                              ),
                              FFLocalizations.of(context).getText(
                                'zspmvdas' /* Important */,
                              ),
                              FFLocalizations.of(context).getText(
                                'p0un418b' /* Plutôt important
 */
                                ,
                              ),
                              FFLocalizations.of(context).getText(
                                '4lsogzl3' /* Vraiment important */,
                              )
                            ],
                            onChanged: (value) {
                              setState(() => radioButton9Value = value);
                            },
                            optionHeight: 25,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Avenir Light ',
                                      color: Colors.black,
                                      useGoogleFonts: false,
                                    ),
                            selectedTextStyle: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Avenir Light ',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
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
                    ),
                    Spacer(),
                    FFButtonWidget(
                      onPressed: () async {
                        final usersUpdateData = createUsersRecordData(
                          qsQ8: radioButton8Value,
                          qsQ9: radioButton9Value,
                        );
                        await currentUserReference.update(usersUpdateData);
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRight,
                            duration: Duration(milliseconds: 200),
                            reverseDuration: Duration(milliseconds: 200),
                            child: Qs7Widget(),
                          ),
                        );
                      },
                      text: FFLocalizations.of(context).getText(
                        '2kw6o9vt' /* Continuez
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
