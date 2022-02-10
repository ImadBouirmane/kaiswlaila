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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.chevron_left,
            color: FlutterFlowTheme.primaryColor,
            size: 24,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Stack(
          children: [
            if (!(isGroupChat()) ?? true)
              Text(
                widget.chatUser.displayName,
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Arial Black',
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  useGoogleFonts: false,
                ),
              ),
            if (isGroupChat() ?? true)
              Text(
                FFLocalizations.of(context).getText(
                  '3oxma931' /* Group Chat */,
                ),
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Lexend Deca',
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
        actions: [
          Visibility(
            visible: isGroupChat() ?? true,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
              child: InkWell(
                onTap: () async {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Navigate to add users page!',
                        style: TextStyle(),
                      ),
                      duration: Duration(milliseconds: 4000),
                      backgroundColor: Color(0x00000000),
                    ),
                  );
                },
                child: Icon(
                  Icons.person_add,
                  color: FlutterFlowTheme.primaryColor,
                  size: 24,
                ),
              ),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.customColor9,
      body: StreamBuilder<FFChatInfo>(
        stream: FFChatManager.instance.getChatInfo(
          otherUserRecord: widget.chatUser,
          chatReference: widget.chatRef,
        ),
        builder: (context, snapshot) => snapshot.hasData
            ? FFChatPage(
                chatInfo: snapshot.data,
                allowImages: true,
                backgroundColor: FlutterFlowTheme.customColor9,
                timeDisplaySetting: TimeDisplaySetting.visibleOnTap,
                currentUserBoxDecoration: BoxDecoration(
                  color: FlutterFlowTheme.customColor9,
                  borderRadius: BorderRadius.circular(20),
                ),
                otherUsersBoxDecoration: BoxDecoration(
                  color: FlutterFlowTheme.primaryColor,
                  border: Border.all(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                currentUserTextStyle: TextStyle(
                  fontFamily: 'Avenir Light ',
                  color: FlutterFlowTheme.customColor7,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                ),
                otherUsersTextStyle: TextStyle(
                  fontFamily: 'Avenir Light ',
                  color: Colors.white,
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
                    'assets/images/undraw_Online_dating_re_hu03.png',
                  ),
                ),
              )
            : const Center(
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: SpinKitFadingCircle(
                    color: FlutterFlowTheme.primaryColor,
                    size: 30,
                  ),
                ),
              ),
      ),
    );
  }
}
