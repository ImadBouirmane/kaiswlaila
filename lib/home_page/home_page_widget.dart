import '../all_chat_page/all_chat_page_widget.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/navbar_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../is_match/is_match_widget.dart';
import '../profile/profile_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({
    Key key,
    this.user,
    this.userRecords,
  }) : super(key: key);

  final UsersRecord user;
  final DocumentReference userRecords;

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0.925,
      ),
    ),
    'cardOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(-40, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'cardOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(40, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0.925,
      ),
    ),
    'cardOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(-40, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'cardOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(40, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0.925,
      ),
    ),
    'cardOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(-40, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'cardOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(40, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'textOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0.925,
      ),
    ),
    'cardOnPageLoadAnimation7': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(-40, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'cardOnPageLoadAnimation8': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(40, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'textOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0.925,
      ),
    ),
    'cardOnPageLoadAnimation9': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(-40, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'cardOnPageLoadAnimation10': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(40, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(-40, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 810,
      delay: 170,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 50),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'circleImageOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      duration: 600,
      delay: 150,
      hideBeforeAnimating: false,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 3,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(40, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
    setupTriggerAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onActionTrigger),
      this,
    );

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'homePage'});
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
        List<UsersRecord> homePageUsersRecordList = snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
          return Container();
        }
        final homePageUsersRecord = homePageUsersRecordList.isNotEmpty
            ? homePageUsersRecordList.first
            : null;
        return Scaffold(
          key: scaffoldKey,
          body: FutureBuilder<UsersRecord>(
            future: UsersRecord.getDocumentOnce(homePageUsersRecord.reference),
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
              final containerUsersRecord = snapshot.data;
              return Container(
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
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/Asset_12@4x.png',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'HOME_PAGE_PAGE_Container_pna6db68_ON_TAP');
                                    logFirebaseEvent('Container_Navigate-To');
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ProfileWidget(),
                                      ),
                                    );
                                  },
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 3,
                                    shape: const CircleBorder(),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                        ),
                                      ),
                                      child: AuthUserStreamWidget(
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: CachedNetworkImage(
                                            imageUrl: currentUserPhoto,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'kk1wnohh' /* Découvrir */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .title1
                                      .override(
                                        fontFamily: 'Avenir Light ',
                                        color: FlutterFlowTheme.of(context)
                                            .customColor4,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w900,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'HOME_CircleImage_pizgmbzj_ON_TAP');
                                    logFirebaseEvent('CircleImage_Navigate-To');
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                        reverseDuration:
                                            Duration(milliseconds: 0),
                                        child: AllChatPageWidget(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      'assets/images/Asset_13@4x.png',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: FutureBuilder<List<UsersRecord>>(
                              future: queryUsersRecordOnce(
                                queryBuilder: (usersRecord) => usersRecord
                                    .where('forMale',
                                        isEqualTo:
                                            homePageUsersRecord.forFemale)
                                    .where('forFemale',
                                        isEqualTo: homePageUsersRecord.forMale)
                                    .orderBy('pourcentage', descending: true),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: SpinKitFadingCircle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 30,
                                      ),
                                    ),
                                  );
                                }
                                List<UsersRecord> pageViewUsersRecordList =
                                    snapshot.data;
                                return Container(
                                  width: double.infinity,
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 50),
                                    child: PageView.builder(
                                      controller: pageViewController ??=
                                          PageController(
                                              initialPage: min(
                                                  1,
                                                  pageViewUsersRecordList
                                                          .length -
                                                      1)),
                                      scrollDirection: Axis.horizontal,
                                      itemCount: pageViewUsersRecordList.length,
                                      itemBuilder: (context, pageViewIndex) {
                                        final pageViewUsersRecord =
                                            pageViewUsersRecordList[
                                                pageViewIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 30, 0, 0),
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(),
                                                  child: Stack(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.2, 0),
                                                        child: Container(
                                                          width: 250,
                                                          height: 250,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Image.asset(
                                                            'assets/images/Asset_15@4x.png',
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -0.2, 0),
                                                        child: Container(
                                                          width: 250,
                                                          height: 250,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Image.asset(
                                                            'assets/images/Asset_15@4x.png',
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Stack(
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0, 0),
                                                              child: FutureBuilder<
                                                                  List<
                                                                      UsersRecord>>(
                                                                future:
                                                                    queryUsersRecordOnce(
                                                                  singleRecord:
                                                                      true,
                                                                ),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            30,
                                                                        height:
                                                                            30,
                                                                        child:
                                                                            SpinKitFadingCircle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryColor,
                                                                          size:
                                                                              30,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<UsersRecord>
                                                                      progressBarUsersRecordList =
                                                                      snapshot
                                                                          .data;
                                                                  // Return an empty Container when the document does not exist.
                                                                  if (snapshot
                                                                      .data
                                                                      .isEmpty) {
                                                                    return Container();
                                                                  }
                                                                  final progressBarUsersRecord = progressBarUsersRecordList
                                                                          .isNotEmpty
                                                                      ? progressBarUsersRecordList
                                                                          .first
                                                                      : null;
                                                                  return CircularPercentIndicator(
                                                                    percent:
                                                                        homePageUsersRecord
                                                                            .progressBar,
                                                                    radius: 115,
                                                                    lineWidth:
                                                                        10,
                                                                    animation:
                                                                        true,
                                                                    progressColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryColor,
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .customColor6,
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0, 0),
                                                              child: InkWell(
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'HOME_CircleImage_jtqpdmfm_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'CircleImage_Expand-Image');
                                                                  await Navigator
                                                                      .push(
                                                                    context,
                                                                    PageTransition(
                                                                      type: PageTransitionType
                                                                          .fade,
                                                                      child:
                                                                          FlutterFlowExpandedImageView(
                                                                        image:
                                                                            CachedNetworkImage(
                                                                          imageUrl:
                                                                              pageViewUsersRecord.photoUrl,
                                                                          fit: BoxFit
                                                                              .contain,
                                                                        ),
                                                                        allowRotation:
                                                                            false,
                                                                        tag: pageViewUsersRecord
                                                                            .photoUrl,
                                                                        useHeroAnimation:
                                                                            true,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                                child: Hero(
                                                                  tag: pageViewUsersRecord
                                                                      .photoUrl,
                                                                  transitionOnUserGestures:
                                                                      true,
                                                                  child:
                                                                      Container(
                                                                    width: 220,
                                                                    height: 220,
                                                                    clipBehavior:
                                                                        Clip.antiAlias,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child:
                                                                        CachedNetworkImage(
                                                                      imageUrl:
                                                                          pageViewUsersRecord
                                                                              .photoUrl,
                                                                      fit: BoxFit
                                                                          .fitWidth,
                                                                    ),
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
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 20, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        pageViewUsersRecord
                                                            .displayName
                                                            .maybeHandleOverflow(
                                                                maxChars: 25),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .title1,
                                                      ).animated([
                                                        animationsMap[
                                                            'textOnPageLoadAnimation1']
                                                      ]),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      if ((pageViewUsersRecord
                                                              .city) ==
                                                          (pageViewUsersRecord
                                                              .city))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 10, 0),
                                                          child: Card(
                                                            clipBehavior: Clip
                                                                .antiAliasWithSaveLayer,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .customColor10,
                                                            elevation: 2,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          10,
                                                                          10,
                                                                          10),
                                                              child: Text(
                                                                pageViewUsersRecord
                                                                    .city,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                            ),
                                                          ).animated([
                                                            animationsMap[
                                                                'cardOnPageLoadAnimation1']
                                                          ]),
                                                        ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    10, 0),
                                                        child: Card(
                                                          clipBehavior: Clip
                                                              .antiAliasWithSaveLayer,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor10,
                                                          elevation: 2,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        10,
                                                                        10,
                                                                        10),
                                                            child:
                                                                AuthUserStreamWidget(
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  functions
                                                                      .distance(
                                                                          currentUserDocument
                                                                              ?.location,
                                                                          pageViewUsersRecord
                                                                              .location)
                                                                      .toString(),
                                                                  'Km',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                            ),
                                                          ),
                                                        ).animated([
                                                          animationsMap[
                                                              'cardOnPageLoadAnimation2']
                                                        ]),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'HOME_PAGE_PAGE_Container_m69cwoz2_ON_TAP');
                                    logFirebaseEvent('Container_Page-View');
                                    await pageViewController.previousPage(
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.ease,
                                    );
                                  },
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 3,
                                    shape: const CircleBorder(),
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .customColor10,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 10,
                                            color: FlutterFlowTheme.of(context)
                                                .customColor6,
                                            spreadRadius: 10,
                                          )
                                        ],
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .customColor6,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 10, 10, 10),
                                        child: Container(
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            'assets/images/icons8_undo_100px_1.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ).animated([
                                  animationsMap['containerOnPageLoadAnimation1']
                                ]),
                                InkWell(
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'HOME_PAGE_PAGE_Container_t25ixfqy_ON_TAP');
                                    if ((valueOrDefault(
                                            currentUserDocument?.like,
                                            false)) ==
                                        (homePageUsersRecord.like)) {
                                      logFirebaseEvent(
                                          'Container_Backend-Call');

                                      final matchesCreateData = {
                                        'users': [
                                          homePageUsersRecord.reference
                                        ],
                                      };
                                      await MatchesRecord.collection
                                          .doc()
                                          .set(matchesCreateData);
                                    } else {
                                      logFirebaseEvent('Container_Page-View');
                                      await pageViewController.nextPage(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                      return;
                                    }

                                    logFirebaseEvent(
                                        'Container_Widget-Animation');
                                    await Future.delayed(
                                      Duration(
                                        milliseconds: animationsMap[
                                                'circleImageOnActionTriggerAnimation']
                                            .delay
                                            .toInt(),
                                      ),
                                      () => (animationsMap[
                                                  'circleImageOnActionTriggerAnimation']
                                              .curvedAnimation
                                              .parent as AnimationController)
                                          .forward(from: 0.0),
                                    );
                                    logFirebaseEvent('Container_Navigate-To');
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.bottomToTop,
                                        duration: Duration(milliseconds: 200),
                                        reverseDuration:
                                            Duration(milliseconds: 200),
                                        child: IsMatchWidget(
                                          user: homePageUsersRecord,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 3,
                                    shape: const CircleBorder(),
                                    child: Container(
                                      width: 120,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.asset(
                                            'assets/images/Asset_8@4x.png',
                                          ).image,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 10, 10, 10),
                                        child: Container(
                                          width: 80,
                                          height: 80,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            'assets/images/Asset_9@4x.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ).animated([
                                          animationsMap[
                                              'circleImageOnActionTriggerAnimation']
                                        ]),
                                      ),
                                    ),
                                  ),
                                ).animated([
                                  animationsMap['containerOnPageLoadAnimation2']
                                ]),
                                InkWell(
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'HOME_PAGE_PAGE_Container_wrqysmcg_ON_TAP');
                                    logFirebaseEvent('Container_Page-View');
                                    await pageViewController.nextPage(
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.ease,
                                    );
                                  },
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 3,
                                    shape: const CircleBorder(),
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .customColor10,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 10,
                                            color: FlutterFlowTheme.of(context)
                                                .customColor6,
                                            spreadRadius: 10,
                                          )
                                        ],
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .customColor6,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 10, 10, 10),
                                        child: Container(
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            'assets/images/icons8_Close_100px.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ).animated([
                                  animationsMap['containerOnPageLoadAnimation3']
                                ]),
                              ],
                            ),
                          ),
                          NavbarWidget(),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
