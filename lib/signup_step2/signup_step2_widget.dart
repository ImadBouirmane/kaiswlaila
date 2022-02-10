import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../signup_step3/signup_step3_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class SignupStep2Widget extends StatefulWidget {
  const SignupStep2Widget({Key key}) : super(key: key);

  @override
  _SignupStep2WidgetState createState() => _SignupStep2WidgetState();
}

class _SignupStep2WidgetState extends State<SignupStep2Widget> {
  String uploadedFileUrl = '';
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
                          color: FlutterFlowTheme.primaryColor,
                          size: 30,
                        ),
                        onPressed: () async {
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
                          'oeoe3l6k' /* Avatar */,
                        ),
                        style: FlutterFlowTheme.title1.override(
                          fontFamily: 'Avenir Light ',
                          color: FlutterFlowTheme.customColor3,
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
                              color: FlutterFlowTheme.primaryColor,
                            ),
                          ),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  child: FlutterFlowExpandedImageView(
                                    image: Image.network(
                                      uploadedFileUrl,
                                      fit: BoxFit.contain,
                                    ),
                                    allowRotation: false,
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
                                child: Image.network(
                                  uploadedFileUrl,
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
                          final selectedMedia =
                              await selectMediaWithSourceBottomSheet(
                            context: context,
                            allowPhoto: true,
                            textColor: FlutterFlowTheme.primaryColor,
                            pickerFontFamily: 'Lato',
                          );
                          if (selectedMedia != null &&
                              validateFileFormat(
                                  selectedMedia.storagePath, context)) {
                            showUploadMessage(
                              context,
                              FFLocalizations.of(context).getText(
                                'vrwld95g' /* Téléchargement du fichier... */,
                              ),
                              showLoading: true,
                            );
                            final downloadUrl = await uploadData(
                                selectedMedia.storagePath, selectedMedia.bytes);
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            if (downloadUrl != null) {
                              setState(() => uploadedFileUrl = downloadUrl);
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
                          color: FlutterFlowTheme.customColor9,
                          textStyle: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Avenir Light ',
                            color: FlutterFlowTheme.primaryColor,
                            useGoogleFonts: false,
                          ),
                          elevation: 5,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.primaryColor,
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
                              final usersUpdateData = createUsersRecordData(
                                photoUrl: uploadedFileUrl,
                              );
                              await currentUserReference
                                  .update(usersUpdateData);
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.leftToRight,
                                  duration: Duration(milliseconds: 200),
                                  reverseDuration: Duration(milliseconds: 200),
                                  child: SignupStep3Widget(),
                                ),
                              );
                            },
                            text: FFLocalizations.of(context).getText(
                              'wo9oaq4u' /* Continuez */,
                            ),
                            options: FFButtonOptions(
                              width: 200,
                              height: 50,
                              color: FlutterFlowTheme.customColor9,
                              textStyle: FlutterFlowTheme.subtitle2.override(
                                fontFamily: 'Avenir Light ',
                                color: FlutterFlowTheme.secondaryColor,
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
