import '../all_chat_page/all_chat_page_widget.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_page/home_page_widget.dart';
import '../matches/matches_widget.dart';
import '../profile/profile_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({Key key}) : super(key: key);

  @override
  _NavbarWidgetState createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 60),
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
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).customColor9,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
        child: FutureBuilder<List<UsersRecord>>(
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
            List<UsersRecord> navbarUsersRecordList = snapshot.data;
            final navbarUsersRecord = navbarUsersRecordList.isNotEmpty
                ? navbarUsersRecordList.first
                : null;
            return Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () async {
                    logFirebaseEvent('NAVBAR_COMP_Container_awygusd0_ON_TAP');
                    logFirebaseEvent('Container_Navigate-To');
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                        reverseDuration: Duration(milliseconds: 0),
                        child: HomePageWidget(),
                      ),
                    );
                  },
                  child: Material(
                    color: Colors.transparent,
                    elevation: 5,
                    shape: const CircleBorder(),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/Asset_10@4x.png',
                          ).image,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    logFirebaseEvent('NAVBAR_COMP_Container_yc9dcy9i_ON_TAP');
                    logFirebaseEvent('Container_Navigate-To');
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                        reverseDuration: Duration(milliseconds: 0),
                        child: AllChatPageWidget(),
                      ),
                    );
                  },
                  child: Material(
                    color: Colors.transparent,
                    elevation: 5,
                    shape: const CircleBorder(),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/Asset_11@4x.png',
                          ).image,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    logFirebaseEvent('NAVBAR_COMP_Container_m0xzt30x_ON_TAP');
                    logFirebaseEvent('Container_Navigate-To');
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                        reverseDuration: Duration(milliseconds: 0),
                        child: MatchesWidget(),
                      ),
                    );
                  },
                  child: Material(
                    color: Colors.transparent,
                    elevation: 5,
                    shape: const CircleBorder(),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/Asset_12@4x_copie.png',
                          ).image,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    logFirebaseEvent('NAVBAR_COMP_Container_kvqma7dy_ON_TAP');
                    logFirebaseEvent('Container_Navigate-To');
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
                    elevation: 5,
                    shape: const CircleBorder(),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).customColor9,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/Asset_12@4x.png',
                          ).image,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    ).animated([animationsMap['containerOnPageLoadAnimation']]);
  }
}
