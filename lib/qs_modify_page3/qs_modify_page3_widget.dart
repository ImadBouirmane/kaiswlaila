import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_checkbox_group.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../qs_modify_page4/qs_modify_page4_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class QsModifyPage3Widget extends StatefulWidget {
  const QsModifyPage3Widget({Key key}) : super(key: key);

  @override
  _QsModifyPage3WidgetState createState() => _QsModifyPage3WidgetState();
}

class _QsModifyPage3WidgetState extends State<QsModifyPage3Widget> {
  List<String> checkboxGroupValues;
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
                'assets/images/Asset_3@4x.png',
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
                                'jja7aww4' /* Questionnaire */,
                              ),
                              style: FlutterFlowTheme.of(context).title1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 50),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AuthUserStreamWidget(
                            child: LinearPercentIndicator(
                                percent: currentUserDocument?.progressBar,
                                width: MediaQuery.of(context).size.width * 0.7,
                                lineHeight: 24,
                                animation: true,
                                progressColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                backgroundColor:
                                    FlutterFlowTheme.of(context).customColor10,
                                center: Text(
                                  FFLocalizations.of(context).getText(
                                    'hryeok42' /* 30% */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Avenir Light ',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                barRadius: Radius.circular(10)),
                          ),
                        ],
                      ),
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
                                    '87q5j5v4' /* Le plus important dans une rel... */,
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
                      child: FlutterFlowCheckboxGroup(
                        initiallySelected: checkboxGroupValues != null
                            ? checkboxGroupValues
                            : [''],
                        options: [
                          FFLocalizations.of(context).getText(
                            'vf393g57' /* La passion */,
                          ),
                          FFLocalizations.of(context).getText(
                            'v9f9mear' /* L'amour */,
                          ),
                          FFLocalizations.of(context).getText(
                            'w3di5m6o' /* La complicité */,
                          ),
                          FFLocalizations.of(context).getText(
                            'mx3v3nc3' /* La loyauté */,
                          ),
                          FFLocalizations.of(context).getText(
                            'x06rhcf2' /* La fidélité */,
                          ),
                          FFLocalizations.of(context).getText(
                            'fn7hpwo6' /* La transparence  */,
                          ),
                          FFLocalizations.of(context).getText(
                            '0vbr2adi' /* L’authenticité  */,
                          )
                        ],
                        onChanged: (val) =>
                            setState(() => checkboxGroupValues = val),
                        activeColor: FlutterFlowTheme.of(context).primaryColor,
                        checkColor: Colors.white,
                        checkboxBorderColor: Color(0xFF95A1AC),
                        textStyle: FlutterFlowTheme.of(context).bodyText1,
                        labelPadding:
                            EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        checkboxBorderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Spacer(),
                    FFButtonWidget(
                      onPressed: () async {
                        final usersUpdateData = {
                          'Qs5': FieldValue.arrayUnion(
                              [currentUserDocument?.qs5.length.toString()]),
                        };
                        await currentUserReference.update(usersUpdateData);
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRight,
                            duration: Duration(milliseconds: 200),
                            reverseDuration: Duration(milliseconds: 200),
                            child: QsModifyPage4Widget(),
                          ),
                        );
                      },
                      text: FFLocalizations.of(context).getText(
                        's5fbvjre' /* Continuer
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
                              color: FlutterFlowTheme.of(context).customColor7,
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
    );
  }
}
