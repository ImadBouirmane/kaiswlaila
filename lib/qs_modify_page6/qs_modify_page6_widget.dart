import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_checkbox_group.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../qs_modify_page7/qs_modify_page7_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class QsModifyPage6Widget extends StatefulWidget {
  const QsModifyPage6Widget({Key key}) : super(key: key);

  @override
  _QsModifyPage6WidgetState createState() => _QsModifyPage6WidgetState();
}

class _QsModifyPage6WidgetState extends State<QsModifyPage6Widget> {
  List<String> checkboxGroupValues1;
  PageController pageViewController;
  List<String> checkboxGroupValues2;
  List<String> checkboxGroupValues3;
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
                'assets/images/Asset_4@4x.png',
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
                                'fm1b6kkn' /* Questionnaire */,
                              ),
                              style: FlutterFlowTheme.of(context).title1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
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
                                    'el0pysz9' /* 70% */,
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
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 60),
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
                                EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(),
                              child: AutoSizeText(
                                FFLocalizations.of(context).getText(
                                  'k6lqctxp' /* Imaginez que vos amis devaient... */,
                                ),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Avenir Light ',
                                      color: FlutterFlowTheme.of(context)
                                          .customColor7,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: false,
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        30, 30, 30, 30),
                                    child: FlutterFlowCheckboxGroup(
                                      initiallySelected:
                                          checkboxGroupValues1 != null
                                              ? checkboxGroupValues1
                                              : [],
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          '3vuo8bvj' /* Ses valeurs */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '5hh0pl3q' /* Son énergie */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'cmtapis5' /* L’attachement */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'zn7kk56f' /* Les habitudes */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'gtqartlg' /* Le plaisir et la détente */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'monb5gvp' /* Être à deux */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'cc6yqcyg' /* Ma confiance en elle (lui) */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ak0tzh2x' /* Son sex-appeal */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'kqxmhgpr' /* Son amour pour les enfants */,
                                        )
                                      ],
                                      onChanged: (val) => setState(
                                          () => checkboxGroupValues1 = val),
                                      activeColor: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      checkColor: Colors.white,
                                      checkboxBorderColor: Color(0xFF95A1AC),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                      labelPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10, 0, 0, 0),
                                      checkboxBorderRadius:
                                          BorderRadius.circular(20),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        30, 30, 30, 30),
                                    child: FlutterFlowCheckboxGroup(
                                      initiallySelected:
                                          checkboxGroupValues2 != null
                                              ? checkboxGroupValues2
                                              : [],
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'wq53euo3' /* Le partage */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '41l5tvk9' /* Ses convictions */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'c6erd30f' /* La passion */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'pm935891' /* Sa joie de vivre */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'c20bm97w' /* Son apparence physique  */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'hhswviut' /* Notre attirance réciproque  */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'pvbr1ham' /* Nos similitudes  */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '3f3iel3s' /* L’affection que je ressens
 po... */
                                          ,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '01754k9i' /* Sa personnalité  */,
                                        )
                                      ],
                                      onChanged: (val) => setState(
                                          () => checkboxGroupValues2 = val),
                                      activeColor: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      checkColor: Colors.white,
                                      checkboxBorderColor: Color(0xFF95A1AC),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                      labelPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10, 0, 0, 0),
                                      checkboxBorderRadius:
                                          BorderRadius.circular(20),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        30, 30, 30, 30),
                                    child: FlutterFlowCheckboxGroup(
                                      initiallySelected:
                                          checkboxGroupValues3 != null
                                              ? checkboxGroupValues3
                                              : [],
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'fwk893s3' /* Sa gentillesse */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'a3uglnbq' /* Éprouver des sensations fortes */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '8vkaqpql' /* Sa position sociale */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '4u3gc4r3' /* J’ai besoin d’un homme
 (d’une... */
                                          ,
                                        )
                                      ],
                                      onChanged: (val) => setState(
                                          () => checkboxGroupValues3 = val),
                                      activeColor: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      checkColor: Colors.white,
                                      checkboxBorderColor: Color(0xFF95A1AC),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                      labelPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10, 0, 0, 0),
                                      checkboxBorderRadius:
                                          BorderRadius.circular(20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.05, 0.8),
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
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          final usersUpdateData = {
                            'Qs9C1': FieldValue.arrayUnion(
                                [checkboxGroupValues1.length.toString()]),
                            'Qs9C2': FieldValue.arrayUnion(
                                [checkboxGroupValues2.length.toString()]),
                            'Qs9C3': FieldValue.arrayUnion(
                                [checkboxGroupValues3.length.toString()]),
                          };
                          await currentUserReference.update(usersUpdateData);
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.leftToRight,
                              duration: Duration(milliseconds: 200),
                              reverseDuration: Duration(milliseconds: 200),
                              child: QsModifyPage7Widget(),
                            ),
                          );
                        },
                        text: FFLocalizations.of(context).getText(
                          'o7lw9o91' /* Continuer
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
                                color:
                                    FlutterFlowTheme.of(context).customColor7,
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
            ),
          ),
        ),
      ),
    );
  }
}
