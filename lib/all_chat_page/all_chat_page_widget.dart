import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../chat/chat_widget.dart';
import '../components/empty_chats_widget.dart';
import '../components/navbar_widget.dart';
import '../flutter_flow/chat/index.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../profile/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AllChatPageWidget extends StatefulWidget {
  const AllChatPageWidget({Key key}) : super(key: key);

  @override
  _AllChatPageWidgetState createState() => _AllChatPageWidgetState();
}

class _AllChatPageWidgetState extends State<AllChatPageWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'chatPreviewOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(-49, 0),
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
    return Scaffold(
      key: scaffoldKey,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: FlutterFlowTheme.primaryColor,
              offset: Offset(100, 100),
              spreadRadius: 100,
            )
          ],
          gradient: LinearGradient(
            colors: [
              Color(0xFFE7E2B0),
              Color(0xFFE6C8DD),
              FlutterFlowTheme.customColor2,
              FlutterFlowTheme.secondaryColor
            ],
            stops: [0.2, 0.4, 0.6, 0.8],
            begin: AlignmentDirectional(0.87, -1),
            end: AlignmentDirectional(-0.87, 1),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            color: FlutterFlowTheme.primaryColor,
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
                    Text(
                      FFLocalizations.of(context).getText(
                        'aoawbg0t' /* Chats */,
                      ),
                      style: FlutterFlowTheme.title1.override(
                        fontFamily: 'Avenir Light ',
                        fontSize: 22,
                        useGoogleFonts: false,
                      ),
                    ),
                    InkWell(
                      onTap: () async {
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
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                  child: FutureBuilder<List<ChatsRecord>>(
                    future: queryChatsRecordOnce(
                      queryBuilder: (chatsRecord) => chatsRecord
                          .where('users', arrayContains: currentUserReference)
                          .orderBy('last_message_time', descending: true),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: SpinKitFadingCircle(
                              color: FlutterFlowTheme.primaryColor,
                              size: 30,
                            ),
                          ),
                        );
                      }
                      List<ChatsRecord> listViewChatsRecordList = snapshot.data;
                      if (listViewChatsRecordList.isEmpty) {
                        return EmptyChatsWidget();
                      }
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewChatsRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewChatsRecord =
                              listViewChatsRecordList[listViewIndex];
                          return Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                            child: StreamBuilder<FFChatInfo>(
                              stream: FFChatManager.instance
                                  .getChatInfo(chatRecord: listViewChatsRecord),
                              builder: (context, snapshot) {
                                final chatInfo = snapshot.data ??
                                    FFChatInfo(listViewChatsRecord);
                                return FFChatPreview(
                                  onTap: chatInfo != null
                                      ? () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => ChatWidget(
                                                chatUser: chatInfo.otherUsers
                                                            .length ==
                                                        1
                                                    ? chatInfo
                                                        .otherUsersList.first
                                                    : null,
                                                chatRef: chatInfo
                                                    .chatRecord.reference,
                                              ),
                                            ),
                                          )
                                      : null,
                                  lastChatText: chatInfo.chatPreviewMessage(),
                                  lastChatTime:
                                      listViewChatsRecord.lastMessageTime,
                                  seen: listViewChatsRecord.lastMessageSeenBy
                                      .contains(currentUserReference),
                                  title: chatInfo.chatPreviewTitle(),
                                  userProfilePic: chatInfo.chatPreviewPic(),
                                  color: FlutterFlowTheme.customColor9,
                                  unreadColor: FlutterFlowTheme.primaryColor,
                                  titleTextStyle: TextStyle(
                                    fontFamily: 'Arial Black',
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                  dateTextStyle: TextStyle(
                                    fontFamily: 'Avenir Light ',
                                    color: FlutterFlowTheme.secondaryColor,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                  previewTextStyle: TextStyle(
                                    fontFamily: 'Avenir Light ',
                                    color: FlutterFlowTheme.customColor3,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          3, 3, 3, 3),
                                  borderRadius: BorderRadius.circular(20),
                                );
                              },
                            ).animated([
                              animationsMap['chatPreviewOnPageLoadAnimation']
                            ]),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              NavbarWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
