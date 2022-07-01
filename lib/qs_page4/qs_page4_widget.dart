import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/back7_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../qs_page5/qs_page5_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class QsPage4Widget extends StatefulWidget {
  const QsPage4Widget({Key key}) : super(key: key);

  @override
  _QsPage4WidgetState createState() => _QsPage4WidgetState();
}

class _QsPage4WidgetState extends State<QsPage4Widget> {
  PageController pageViewController;
  double ratingBar1Value;
  double ratingBar2Value;
  double ratingBar3Value;
  double ratingBar4Value;
  double ratingBar5Value;
  double ratingBar6Value;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'QsPage4'});
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
        List<UsersRecord> qsPage4UsersRecordList = snapshot.data;
        final qsPage4UsersRecord = qsPage4UsersRecordList.isNotEmpty
            ? qsPage4UsersRecordList.first
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
                    'assets/images/Asset_3@4x.png',
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
                        Back7Widget(),
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
                                      logFirebaseEvent(
                                          'QS_PAGE4_PAGE_chevron_left_ICN_ON_TAP');
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
                                          'ppu4s2x0' /* Questionnaire */,
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
                                      percent: 0.4,
                                      width: MediaQuery.of(context).size.width *
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
                                          '7682nbj1' /* 40% */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Avenir Light ',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
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
                                        0, 0, 0, 15),
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                        'assets/images/icons8_6_60px.png',
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                          child: AutoSizeText(
                                            FFLocalizations.of(context).getText(
                                              'il0hvrhc' /* Vos besoins */,
                                            ),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle1
                                                .override(
                                                  fontFamily: 'Avenir Light ',
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                  .fromSTEB(10, 0, 10, 0),
                                              child: Wrap(
                                                spacing: 0,
                                                runSpacing: 0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 20),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(5,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'b88wrl3j' /* De 1 à 5 (1 pas très important... */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 10),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'ulzkksko' /* Affection */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 15),
                                                    child: AuthUserStreamWidget(
                                                      child: RatingBar.builder(
                                                        onRatingUpdate: (newValue) =>
                                                            setState(() =>
                                                                ratingBar1Value =
                                                                    newValue),
                                                        itemBuilder:
                                                            (context, index) =>
                                                                Icon(
                                                          Icons.star_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                        ),
                                                        direction:
                                                            Axis.horizontal,
                                                        initialRating:
                                                            ratingBar1Value ??=
                                                                valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.qs6RB1,
                                                                    0.0),
                                                        unratedColor:
                                                            Color(0xFF9E9E9E),
                                                        itemCount: 5,
                                                        itemSize: 30,
                                                        glowColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 10),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'z18sn5vq' /* Indépendance */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 15),
                                                    child: AuthUserStreamWidget(
                                                      child: RatingBar.builder(
                                                        onRatingUpdate: (newValue) =>
                                                            setState(() =>
                                                                ratingBar2Value =
                                                                    newValue),
                                                        itemBuilder:
                                                            (context, index) =>
                                                                Icon(
                                                          Icons.star_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                        ),
                                                        direction:
                                                            Axis.horizontal,
                                                        initialRating:
                                                            ratingBar2Value ??=
                                                                valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.qs6RB2,
                                                                    0.0),
                                                        unratedColor:
                                                            Color(0xFF9E9E9E),
                                                        itemCount: 5,
                                                        itemSize: 30,
                                                        glowColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 10),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'yflj2fva' /* Liberté */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 15),
                                                    child: AuthUserStreamWidget(
                                                      child: RatingBar.builder(
                                                        onRatingUpdate: (newValue) =>
                                                            setState(() =>
                                                                ratingBar3Value =
                                                                    newValue),
                                                        itemBuilder:
                                                            (context, index) =>
                                                                Icon(
                                                          Icons.star_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                        ),
                                                        direction:
                                                            Axis.horizontal,
                                                        initialRating:
                                                            ratingBar3Value ??=
                                                                valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.qs6RB3,
                                                                    0.0),
                                                        unratedColor:
                                                            Color(0xFF9E9E9E),
                                                        itemCount: 5,
                                                        itemSize: 30,
                                                        glowColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 10),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'wouevk5m' /* Reconnaissance */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 15),
                                                    child: AuthUserStreamWidget(
                                                      child: RatingBar.builder(
                                                        onRatingUpdate: (newValue) =>
                                                            setState(() =>
                                                                ratingBar4Value =
                                                                    newValue),
                                                        itemBuilder:
                                                            (context, index) =>
                                                                Icon(
                                                          Icons.star_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                        ),
                                                        direction:
                                                            Axis.horizontal,
                                                        initialRating:
                                                            ratingBar4Value ??=
                                                                valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.qs6RB4,
                                                                    0.0),
                                                        unratedColor:
                                                            Color(0xFF9E9E9E),
                                                        itemCount: 5,
                                                        itemSize: 30,
                                                        glowColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(0, -0.8),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 10, 0),
                                                child: Wrap(
                                                  spacing: 0,
                                                  runSpacing: 0,
                                                  alignment:
                                                      WrapAlignment.start,
                                                  crossAxisAlignment:
                                                      WrapCrossAlignment.start,
                                                  direction: Axis.horizontal,
                                                  runAlignment:
                                                      WrapAlignment.start,
                                                  verticalDirection:
                                                      VerticalDirection.down,
                                                  clipBehavior: Clip.none,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 20),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'ysmqc5y7' /* De 1 à 5 (1 pas très important... */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 10),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'g6vr4fu1' /* Admiration  */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 15),
                                                      child:
                                                          AuthUserStreamWidget(
                                                        child:
                                                            RatingBar.builder(
                                                          onRatingUpdate: (newValue) =>
                                                              setState(() =>
                                                                  ratingBar5Value =
                                                                      newValue),
                                                          itemBuilder: (context,
                                                                  index) =>
                                                              Icon(
                                                            Icons.star_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                          ),
                                                          direction:
                                                              Axis.horizontal,
                                                          initialRating:
                                                              ratingBar5Value ??=
                                                                  valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.qs6RB5,
                                                                      0.0),
                                                          unratedColor:
                                                              Color(0xFF9E9E9E),
                                                          itemCount: 5,
                                                          itemSize: 30,
                                                          glowColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryColor,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 10),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'ljkxmklp' /* Fonder une famille */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 15),
                                                      child:
                                                          AuthUserStreamWidget(
                                                        child:
                                                            RatingBar.builder(
                                                          onRatingUpdate: (newValue) =>
                                                              setState(() =>
                                                                  ratingBar6Value =
                                                                      newValue),
                                                          itemBuilder: (context,
                                                                  index) =>
                                                              Icon(
                                                            Icons.star_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                          ),
                                                          direction:
                                                              Axis.horizontal,
                                                          initialRating:
                                                              ratingBar6Value ??=
                                                                  valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.qs6RB6,
                                                                      0.0),
                                                          unratedColor:
                                                              Color(0xFF9E9E9E),
                                                          itemCount: 5,
                                                          itemSize: 30,
                                                          glowColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryColor,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.05, 1),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 10),
                                          child: SmoothPageIndicator(
                                            controller: pageViewController ??=
                                                PageController(initialPage: 0),
                                            count: 2,
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
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'QS_PAGE4_PAGE_step4_ON_TAP');
                                    logFirebaseEvent('step4_Backend-Call');

                                    final usersUpdateData =
                                        createUsersRecordData(
                                      qs6RB1: ratingBar1Value,
                                      qs6RB2: ratingBar2Value,
                                      qs6RB3: ratingBar3Value,
                                      qs6RB4: ratingBar4Value,
                                      qs6RB5: ratingBar5Value,
                                      qs6RB6: ratingBar6Value,
                                      progressBar: 0.4,
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
                                        child: QsPage5Widget(),
                                      ),
                                    );
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    '5ehrybj4' /* Continuer */,
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
