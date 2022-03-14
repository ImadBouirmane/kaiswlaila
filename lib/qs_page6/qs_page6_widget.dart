import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/back5_widget.dart';
import '../flutter_flow/flutter_flow_checkbox_group.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../qs_page7/qs_page7_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class QsPage6Widget extends StatefulWidget {
  const QsPage6Widget({Key key}) : super(key: key);

  @override
  _QsPage6WidgetState createState() => _QsPage6WidgetState();
}

class _QsPage6WidgetState extends State<QsPage6Widget> {
  List<String> checkboxGroupValues1;
  PageController pageViewController;
  List<String> checkboxGroupValues2;
  List<String> checkboxGroupValues3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
        List<UsersRecord> qsPage6UsersRecordList = snapshot.data;
        final qsPage6UsersRecord = qsPage6UsersRecordList.isNotEmpty
            ? qsPage6UsersRecordList.first
            : null;
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
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 20, 15, 20),
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
                                          'mwt2fa5y' /* Questionnaire */,
                                        ),
                                        style:
                                            FlutterFlowTheme.of(context).title1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 30, 0, 30),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    LinearPercentIndicator(
                                        percent: 0.7,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        lineHeight: 24,
                                        animation: true,
                                        progressColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .customColor10,
                                        center: Text(
                                          FFLocalizations.of(context).getText(
                                            '6gmg1s8i' /* 70% */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Avenir Light ',
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 60),
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
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 10),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(),
                                        child: AutoSizeText(
                                          FFLocalizations.of(context).getText(
                                            'rcn30c2m' /* Imaginez que vos amis devaient... */,
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
                                ],
                              ),
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 30),
                                        child: PageView(
                                          controller: pageViewController ??=
                                              PageController(initialPage: 0),
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(30, 0, 30, 30),
                                              child: FlutterFlowCheckboxGroup(
                                                initiallySelected:
                                                    checkboxGroupValues1 != null
                                                        ? checkboxGroupValues1
                                                        : [],
                                                options: [
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '1hn5qh91' /* Ses valeurs */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'voskdiu6' /* Son énergie */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'zifr7v5v' /* L’attachement */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'k4veflv4' /* Les habitudes */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'mq2x1ksm' /* Le plaisir et la détente */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'yj1yf58v' /* Être à deux */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '7q945q5j' /* Ma confiance en elle (lui) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'bm14bjj9' /* Son sex-appeal */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'vx0d7yqh' /* Son amour pour les enfants */,
                                                  )
                                                ],
                                                onChanged: (val) => setState(
                                                    () => checkboxGroupValues1 =
                                                        val),
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                checkColor: Colors.white,
                                                checkboxBorderColor:
                                                    Color(0xFF95A1AC),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                                labelPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(10, 0, 0, 0),
                                                checkboxBorderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(30, 0, 30, 30),
                                              child: FlutterFlowCheckboxGroup(
                                                initiallySelected:
                                                    checkboxGroupValues2 != null
                                                        ? checkboxGroupValues2
                                                        : [],
                                                options: [
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'mj9rqx3a' /* Le partage */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'p5vrz6tt' /* Ses convictions */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'fncvqqdj' /* La passion */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6j84fai7' /* Sa joie de vivre */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '643vde0y' /* Son apparence physique  */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'aak2zz1g' /* Notre attirance réciproque  */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '79aw810k' /* Nos similitudes  */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'bn98g8p4' /* L’affection que je ressens
 po... */
                                                    ,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'idao9r8m' /* Sa personnalité  */,
                                                  )
                                                ],
                                                onChanged: (val) => setState(
                                                    () => checkboxGroupValues2 =
                                                        val),
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                checkColor: Colors.white,
                                                checkboxBorderColor:
                                                    Color(0xFF95A1AC),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                                labelPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(10, 0, 0, 0),
                                                checkboxBorderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(30, 30, 30, 30),
                                              child: FlutterFlowCheckboxGroup(
                                                initiallySelected:
                                                    checkboxGroupValues3 != null
                                                        ? checkboxGroupValues3
                                                        : [],
                                                options: [
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'vk1vfsno' /* Sa gentillesse */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '09lp2049' /* Éprouver des sensations fortes */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '3pf8k24c' /* Sa position sociale */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'azcxrjix' /* J’ai besoin d’un homme
 (d’une... */
                                                    ,
                                                  )
                                                ],
                                                onChanged: (val) => setState(
                                                    () => checkboxGroupValues3 =
                                                        val),
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                checkColor: Colors.white,
                                                checkboxBorderColor:
                                                    Color(0xFF95A1AC),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                                labelPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(10, 0, 0, 0),
                                                checkboxBorderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.05, 0.8),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 10),
                                          child: SmoothPageIndicator(
                                            controller: pageViewController ??=
                                                PageController(initialPage: 0),
                                            count: 3,
                                            axisDirection: Axis.horizontal,
                                            onDotClicked: (i) {
                                              pageViewController.animateToPage(
                                                i,
                                                duration:
                                                    Duration(milliseconds: 500),
                                                curve: Curves.ease,
                                              );
                                            },
                                            effect: ExpandingDotsEffect(
                                              expansionFactor: 2,
                                              spacing: 8,
                                              radius: 16,
                                              dotWidth: 16,
                                              dotHeight: 16,
                                              dotColor:
                                                  FlutterFlowTheme.of(context)
                                                      .customColor9,
                                              activeDotColor:
                                                  FlutterFlowTheme.of(context)
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
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    final usersUpdateData = {
                                      ...createUsersRecordData(
                                        progressBar: 0.7,
                                      ),
                                      'Qs9C1': FieldValue.arrayUnion([
                                        checkboxGroupValues1.length.toString()
                                      ]),
                                      'Qs9C2': FieldValue.arrayUnion([
                                        checkboxGroupValues2.length.toString()
                                      ]),
                                      'Qs9C3': FieldValue.arrayUnion([
                                        checkboxGroupValues3.length.toString()
                                      ]),
                                    };
                                    await currentUserReference
                                        .update(usersUpdateData);
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.leftToRight,
                                        duration: Duration(milliseconds: 200),
                                        reverseDuration:
                                            Duration(milliseconds: 200),
                                        child: QsPage7Widget(),
                                      ),
                                    );
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'd48ohd78' /* Continuer
 */
                                    ,
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
          ),
        );
      },
    );
  }
}
