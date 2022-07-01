import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../base_info1/base_info1_widget.dart';
import '../components/back5_widget.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class PhotoProfileWidget extends StatefulWidget {
  const PhotoProfileWidget({Key key}) : super(key: key);

  @override
  _PhotoProfileWidgetState createState() => _PhotoProfileWidgetState();
}

class _PhotoProfileWidgetState extends State<PhotoProfileWidget> {
  String uploadedFileUrl = '';
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'photoProfile'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/Asset_6@4x.png',
              ).image,
            ),
          ),
          child: Stack(
            children: [
              Back5Widget(),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 30, 15, 30),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 60,
                            icon: Icon(
                              Icons.chevron_left_outlined,
                              color: FlutterFlowTheme.of(context).customColor10,
                              size: 30,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'PHOTO_PROFILE_chevron_left_outlined_ICN_');
                              logFirebaseEvent('IconButton_Navigate-Back');
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'oeoe3l6k' /* Photo de profil */,
                            ),
                            style: FlutterFlowTheme.of(context).title1.override(
                                  fontFamily: 'Avenir Light ',
                                  color:
                                      FlutterFlowTheme.of(context).customColor3,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Material(
                            color: Colors.transparent,
                            elevation: 5,
                            shape: const CircleBorder(),
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Color(0x00EEEEEE),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                              ),
                              child: InkWell(
                                onTap: () async {
                                  logFirebaseEvent(
                                      'PHOTO_PROFILE_CircleImage_1pddrxqo_ON_TA');
                                  logFirebaseEvent('CircleImage_Expand-Image');
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      child: FlutterFlowExpandedImageView(
                                        image: CachedNetworkImage(
                                          imageUrl: uploadedFileUrl,
                                          fit: BoxFit.contain,
                                        ),
                                        allowRotation: true,
                                        tag: uploadedFileUrl,
                                        useHeroAnimation: true,
                                      ),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: uploadedFileUrl,
                                  transitionOnUserGestures: true,
                                  child: Container(
                                    width: 150,
                                    height: 150,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: CachedNetworkImage(
                                      imageUrl: uploadedFileUrl,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'PHOTO_PROFILE_avatarUploadBtn_ON_TAP');
                              logFirebaseEvent(
                                  'avatarUploadBtn_Upload-Photo-Video');
                              final selectedMedia =
                                  await selectMediaWithSourceBottomSheet(
                                context: context,
                                allowPhoto: true,
                                textColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                pickerFontFamily: 'Lato',
                              );
                              if (selectedMedia != null &&
                                  selectedMedia.every((m) => validateFileFormat(
                                      m.storagePath, context))) {
                                showUploadMessage(
                                  context,
                                  FFLocalizations.of(context).getText(
                                    'vrwld95g' /* Téléchargement du fichier... */,
                                  ),
                                  showLoading: true,
                                );
                                final downloadUrls = (await Future.wait(
                                        selectedMedia.map((m) async =>
                                            await uploadData(
                                                m.storagePath, m.bytes))))
                                    .where((u) => u != null)
                                    .toList();
                                ScaffoldMessenger.of(context)
                                    .hideCurrentSnackBar();
                                if (downloadUrls != null &&
                                    downloadUrls.length ==
                                        selectedMedia.length) {
                                  setState(() =>
                                      uploadedFileUrl = downloadUrls.first);
                                  showUploadMessage(
                                    context,
                                    FFLocalizations.of(context).getText(
                                      '2x0ests4' /* Succès! */,
                                    ),
                                  );
                                } else {
                                  showUploadMessage(
                                    context,
                                    FFLocalizations.of(context).getText(
                                      'ejhzf9lt' /* Échec du téléchargement du méd... */,
                                    ),
                                  );
                                  return;
                                }
                              }
                            },
                            text: FFLocalizations.of(context).getText(
                              'jpdcya6h' /* Insérez votre photo */,
                            ),
                            options: FFButtonOptions(
                              width: 170,
                              height: 35,
                              color: FlutterFlowTheme.of(context).customColor6,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Avenir Light ',
                                    color: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                    useGoogleFonts: false,
                                  ),
                              elevation: 5,
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                width: 1,
                              ),
                              borderRadius: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, 1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'PHOTO_PROFILE_PAGE_step2_ON_TAP');
                                  logFirebaseEvent('step2_Backend-Call');

                                  final usersUpdateData = createUsersRecordData(
                                    photoUrl: uploadedFileUrl,
                                  );
                                  await currentUserReference
                                      .update(usersUpdateData);
                                  logFirebaseEvent('step2_Navigate-To');
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.leftToRight,
                                      duration: Duration(milliseconds: 200),
                                      reverseDuration:
                                          Duration(milliseconds: 200),
                                      child: BaseInfo1Widget(),
                                    ),
                                  );
                                },
                                text: FFLocalizations.of(context).getText(
                                  'wo9oaq4u' /* Continuer */,
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
                            ],
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
      ),
    );
  }
}
