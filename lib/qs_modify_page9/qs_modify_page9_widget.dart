import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_checkbox_group.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../settings/settings_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class QsModifyPage9Widget extends StatefulWidget {
  const QsModifyPage9Widget({Key key}) : super(key: key);

  @override
  _QsModifyPage9WidgetState createState() => _QsModifyPage9WidgetState();
}

class _QsModifyPage9WidgetState extends State<QsModifyPage9Widget> {
  List<String> interests1Values;
  PageController pageViewController;
  List<String> interests2Values;
  List<String> interests3Values;
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
        final qsModifyPage9UsersRecord = snapshot.data;
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
                    'assets/images/Asset_5@4x.png',
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
                                      'e9b8zku8' /* Questionnaire */,
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
                                    percent: 1,
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
                                        '9qr0oym6' /* 100% */,
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
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/icons8_13_100px.png',
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
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 0, 0),
                                      child: AutoSizeText(
                                        FFLocalizations.of(context).getText(
                                          'i5pem8d9' /* Vos centres d’intérêts ? 
Veui... */
                                          ,
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1
                                            .override(
                                              fontFamily: 'Avenir Light ',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .customColor7,
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
                                        Wrap(
                                          spacing: 0,
                                          runSpacing: 0,
                                          alignment: WrapAlignment.start,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(30, 30, 30, 30),
                                              child: FlutterFlowCheckboxGroup(
                                                initiallySelected:
                                                    interests1Values != null
                                                        ? interests1Values
                                                        : qsModifyPage9UsersRecord
                                                            .qs13List1
                                                            .toList(),
                                                options: [
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '9hu8kvwf' /* Les concerts */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'abp31r6f' /* Sports équestres */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'f5du3djv' /* La randonnée */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'i31e1o33' /* Gastronomie et restaurants */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ewwwgq2h' /* Arts et activités manuelles */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6wk2g5el' /* Théâtre /Danse/Opéra/Ballet */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'm6u3qd1n' /* Nature/Jardinage */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'mcn168ui' /* Sorties/Soirées */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '92zux0te' /* Diner au restaurant */,
                                                  )
                                                ],
                                                onChanged: (val) => setState(
                                                    () =>
                                                        interests1Values = val),
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
                                        Wrap(
                                          spacing: 0,
                                          runSpacing: 0,
                                          alignment: WrapAlignment.start,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(30, 30, 30, 30),
                                              child: FlutterFlowCheckboxGroup(
                                                initiallySelected:
                                                    interests2Values != null
                                                        ? interests2Values
                                                        : qsModifyPage9UsersRecord
                                                            .qs13List2
                                                            .toList(),
                                                options: [
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'szmy3zww' /* Sports d’hiver */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'oqrjiw6a' /* L'art */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '9kz94o8m' /* Photographie */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'q60dcacx' /* Voile/Planche à voile/Sports n... */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'yqheffk1' /* Littérature/Lecture */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'xg048o0s' /* La chasse */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'odnkpp1b' /* Randonnée/Escalade */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'v759szmf' /* Sports collectifs  (Football, ... */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ljt8dv8h' /* La famille */,
                                                  )
                                                ],
                                                onChanged: (val) => setState(
                                                    () =>
                                                        interests2Values = val),
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
                                        Wrap(
                                          spacing: 0,
                                          runSpacing: 0,
                                          alignment: WrapAlignment.start,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(30, 30, 30, 30),
                                              child: FlutterFlowCheckboxGroup(
                                                initiallySelected:
                                                    interests3Values != null
                                                        ? interests3Values
                                                        : qsModifyPage9UsersRecord
                                                            .qs13List3
                                                            .toList(),
                                                options: [
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'f3gt2d6q' /* Parler avec des amis */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'z7qrdx1v' /* Films/Cinéma */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'jow6m3v2' /* Les voyages */,
                                                  )
                                                ],
                                                onChanged: (val) => setState(
                                                    () =>
                                                        interests3Values = val),
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
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 1),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
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
                                          dotColor: FlutterFlowTheme.of(context)
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
                                EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                final usersUpdateData = {
                                  'Qs13List1': FieldValue.arrayUnion(
                                      [interests1Values.length.toString()]),
                                  'Qs13List2': FieldValue.arrayUnion(
                                      [interests2Values.length.toString()]),
                                  'Qs13List3': FieldValue.arrayUnion(
                                      [interests3Values.length.toString()]),
                                };
                                await currentUserReference
                                    .update(usersUpdateData);
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                    reverseDuration: Duration(milliseconds: 0),
                                    child: SettingsWidget(),
                                  ),
                                );
                              },
                              text: FFLocalizations.of(context).getText(
                                '3i2ri3fx' /* Continuer */,
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
