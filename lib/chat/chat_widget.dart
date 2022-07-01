import '../backend/backend.dart';
import '../flutter_flow/chat/index.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({
    Key key,
    this.chatUser,
    this.chatRef,
  }) : super(key: key);

  final UsersRecord chatUser;
  final DocumentReference chatRef;

  @override
  _ChatWidgetState createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  FFChatInfo _chatInfo;
  bool isGroupChat() {
    if (widget.chatUser == null) {
      return true;
    }
    if (widget.chatRef == null) {
      return false;
    }
    return _chatInfo?.isGroupChat ?? false;
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    FFChatManager.instance
        .getChatInfo(
      otherUserRecord: widget.chatUser,
      chatReference: widget.chatRef,
    )
        .listen((info) {
      if (mounted) {
        setState(() => _chatInfo = info);
      }
    });

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'chat'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).customColor10,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.chevron_left,
            color: FlutterFlowTheme.of(context).primaryColor,
            size: 24,
          ),
          onPressed: () async {
            logFirebaseEvent('CHAT_PAGE_chevron_left_ICN_ON_TAP');
            logFirebaseEvent('IconButton_Navigate-Back');
            Navigator.pop(context);
          },
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: StreamBuilder<FFChatInfo>(
        stream: FFChatManager.instance.getChatInfo(
          otherUserRecord: widget.chatUser,
          chatReference: widget.chatRef,
        ),
        builder: (context, snapshot) => snapshot.hasData
            ? FFChatPage(
                chatInfo: snapshot.data,
                allowImages: true,
                backgroundColor: FlutterFlowTheme.of(context).customColor8,
                timeDisplaySetting: TimeDisplaySetting.visibleOnTap,
                currentUserBoxDecoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                otherUsersBoxDecoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).customColor9,
                  border: Border.all(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                currentUserTextStyle: TextStyle(
                  fontFamily: 'Avenir Light ',
                  color: FlutterFlowTheme.of(context).tertiaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                ),
                otherUsersTextStyle: TextStyle(
                  fontFamily: 'Avenir Light ',
                  color: FlutterFlowTheme.of(context).customColor7,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                inputHintTextStyle: TextStyle(
                  fontFamily: 'Avenir Light ',
                  color: Color(0xFF95A1AC),
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
                inputTextStyle: TextStyle(
                  fontFamily: 'Avenir Light ',
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
                emptyChatWidget: Center(
                  child: Image.asset(
                    'assets/images/Asset_7@4x.png',
                    width: 100,
                    fit: BoxFit.contain,
                  ),
                ),
              )
            : Center(
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: SpinKitFadingCircle(
                    color: FlutterFlowTheme.of(context).primaryColor,
                    size: 30,
                  ),
                ),
              ),
      ),
    );
  }
}
