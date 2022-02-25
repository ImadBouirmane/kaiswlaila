import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../chat/chat_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../profile/profile_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class IsMatchWidget extends StatefulWidget {
  const IsMatchWidget({
    Key key,
    this.user,
    this.userMatch,
  }) : super(key: key);

  final UsersRecord user;
  final MatchesRecord userMatch;

  @override
  _IsMatchWidgetState createState() => _IsMatchWidgetState();
}

class _IsMatchWidgetState extends State<IsMatchWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 160,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(-59, -59),
        scale: 1,
        opacity: 0.125,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'circleImageOnPageLoadAnimation1': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 550,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(46, 46),
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
      duration: 600,
      delay: 160,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(59, 59),
        scale: 1,
        opacity: 0.125,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'circleImageOnPageLoadAnimation2': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 550,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(46, 46),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'textOnPageLoadAnimation': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 180,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 5,
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
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 23),
        scale: 1,
        opacity: 0.165,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'buttonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 45),
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
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
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
        final isMatchUsersRecord = snapshot.data;
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                  reverseDuration: Duration(milliseconds: 0),
                                  child: ProfileWidget(),
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
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: CachedNetworkImage(
                                    imageUrl: isMatchUsersRecord.photoUrl,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'uz3611e0' /* Rencontres */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Arial Black',
                                      fontSize: 22,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Wrap(
                        spacing: 0,
                        runSpacing: 0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.spaceAround,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 300,
                            decoration: BoxDecoration(),
                            child: Stack(
                              alignment: AlignmentDirectional(-0.55, -0.65),
                              children: [
                                Material(
                                  color: Colors.transparent,
                                  elevation: 3,
                                  shape: const CircleBorder(),
                                  child: Container(
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/Asset_15@4x.png',
                                        ).image,
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Stack(
                                      alignment: AlignmentDirectional(0.8, 1),
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.15, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 0, 5),
                                            child: Container(
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: CachedNetworkImage(
                                                imageUrl:
                                                    isMatchUsersRecord.photoUrl,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 50,
                                          height: 50,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            'assets/images/Asset_9@4x.png',
                                          ),
                                        ).animated([
                                          animationsMap[
                                              'circleImageOnPageLoadAnimation1']
                                        ]),
                                      ],
                                    ),
                                  ),
                                ).animated([
                                  animationsMap['containerOnPageLoadAnimation1']
                                ]),
                                Align(
                                  alignment: AlignmentDirectional(0.65, 0.7),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 3,
                                    shape: const CircleBorder(),
                                    child: Container(
                                      width: 130,
                                      height: 130,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.asset(
                                            'assets/images/Asset_15@4x.png',
                                          ).image,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Stack(
                                        alignment: AlignmentDirectional(0.8, 1),
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-0.15, 0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 10, 0, 5),
                                              child: Container(
                                                width: 150,
                                                height: 150,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: CachedNetworkImage(
                                                  imageUrl: '',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 50,
                                            height: 50,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.asset(
                                              'assets/images/Asset_9@4x.png',
                                            ),
                                          ).animated([
                                            animationsMap[
                                                'circleImageOnPageLoadAnimation2']
                                          ]),
                                        ],
                                      ),
                                    ),
                                  ).animated([
                                    animationsMap[
                                        'containerOnPageLoadAnimation2']
                                  ]),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 10),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'fsc9pzu7' /* C'est un match ! */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .title1
                                        .override(
                                          fontFamily: 'Avenir Light ',
                                          fontSize: 22,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 20),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 3, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'ywjrqe02' /* Avec un pourcentage de  */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Avenir Light ',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryColor,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts: false,
                                              ),
                                        ).animated([
                                          animationsMap[
                                              'textOnPageLoadAnimation']
                                        ]),
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '6go3cgq3' /* -- */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .title1
                                            .override(
                                              fontFamily: 'Avenir Light ',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                              fontSize: 19,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Stack(
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                            reverseDuration:
                                                Duration(milliseconds: 0),
                                            child: ChatWidget(
                                              chatUser: isMatchUsersRecord,
                                            ),
                                          ),
                                        );
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'mpxwk6ui' /* Démarrez une conversation main... */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 300,
                                        height: 40,
                                        color: FlutterFlowTheme.of(context)
                                            .customColor10,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Avenir Light ',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .customColor7,
                                              fontSize: 15,
                                              useGoogleFonts: false,
                                            ),
                                        elevation: 3,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30, 10, 30, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.contain,
                                        image: Image.asset(
                                          'assets/images/Asset_16@4x.png',
                                        ).image,
                                      ),
                                    ),
                                  ).animated([
                                    animationsMap[
                                        'containerOnPageLoadAnimation3']
                                  ]),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'fh5z1igs' /* Ou */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 20),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          duration: Duration(milliseconds: 100),
                                          reverseDuration:
                                              Duration(milliseconds: 100),
                                          child: HomePageWidget(),
                                        ),
                                      );
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'uoiyf18y' /* Ca suffit pour moi ! */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 200,
                                      height: 50,
                                      color: FlutterFlowTheme.of(context)
                                          .customColor9,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Avenir Light ',
                                            color: FlutterFlowTheme.of(context)
                                                .customColor7,
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
                                  ).animated([
                                    animationsMap['buttonOnPageLoadAnimation']
                                  ]),
                                ),
                              ],
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
        );
      },
    );
  }
}
