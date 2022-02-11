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
  }) : super(key: key);

  final UsersRecord user;

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
    return FutureBuilder<List<MatchesRecord>>(
      future: queryMatchesRecordOnce(
        queryBuilder: (matchesRecord) =>
            matchesRecord.where('user', isEqualTo: currentUserReference),
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
        List<MatchesRecord> isMatchMatchesRecordList = snapshot.data;
        final isMatchMatchesRecord = isMatchMatchesRecordList.isNotEmpty
            ? isMatchMatchesRecordList.first
            : null;
        return Scaffold(
          key: scaffoldKey,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: FlutterFlowTheme.of(context).primaryColor,
                    offset: Offset(100, 100),
                    spreadRadius: 100,
                  )
                ],
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFE7E2B0),
                    Color(0xFFE6C8DD),
                    FlutterFlowTheme.of(context).customColor2,
                    FlutterFlowTheme.of(context).secondaryColor
                  ],
                  stops: [0.2, 0.4, 0.6, 0.8],
                  begin: AlignmentDirectional(0.87, -1),
                  end: AlignmentDirectional(-0.87, 1),
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
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
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
                                  child: Image.network(
                                    currentUserPhoto,
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
                                            child: AuthUserStreamWidget(
                                              child: Container(
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: CachedNetworkImage(
                                                  imageUrl: currentUserPhoto,
                                                ),
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
                                        ),
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
                                              child: FutureBuilder<UsersRecord>(
                                                future:
                                                    UsersRecord.getDocumentOnce(
                                                        isMatchMatchesRecord
                                                            .user),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 30,
                                                        height: 30,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          size: 30,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  final circleImageUsersRecord =
                                                      snapshot.data;
                                                  return Container(
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: CachedNetworkImage(
                                                      imageUrl:
                                                          circleImageUsersRecord
                                                              .photoUrl,
                                                    ),
                                                  );
                                                },
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
                                          ),
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
                                      'fsc9pzu7' /* C'est un match,  */,
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
                                      0, 0, 0, 30),
                                  child: AuthUserStreamWidget(
                                    child: Text(
                                      currentUserDisplayName,
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1,
                                    ),
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'jyzfvoju' /* Démarrer une conversation main... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Avenir Light ',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30, 20, 30, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                          reverseDuration:
                                              Duration(milliseconds: 0),
                                          child: ChatWidget(
                                            chatUser: widget.user,
                                          ),
                                        ),
                                      );
                                    },
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
                                      'fh5z1igs' /* ou : */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 30, 0, 20),
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
