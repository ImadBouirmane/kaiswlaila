import '../auth/auth_util.dart';
import '../edit_profile/edit_profile_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../settings/settings_widget.dart';
import '../sign_in/sign_in_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({Key key}) : super(key: key);

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.tertiaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 24),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.bottomToTop,
                    duration: Duration(milliseconds: 100),
                    reverseDuration: Duration(milliseconds: 100),
                    child: EditProfileWidget(),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.secondaryColor,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: Icon(
                            Icons.edit_outlined,
                            color: FlutterFlowTheme.tertiaryColor,
                            size: 20,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'q4ae3no9' /* Modifier le profile */,
                                ),
                                style: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Avenir Light ',
                                  color: FlutterFlowTheme.customColor7,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: false,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.bottomToTop,
                    duration: Duration(milliseconds: 100),
                    reverseDuration: Duration(milliseconds: 100),
                    child: SettingsWidget(),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.secondaryColor,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: Icon(
                            Icons.settings,
                            color: FlutterFlowTheme.tertiaryColor,
                            size: 20,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'qx0b29dx' /* Modifier les param??tres */,
                                ),
                                style: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Avenir Light ',
                                  color: FlutterFlowTheme.customColor7,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: false,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                await signOut();
                await Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInWidget(),
                  ),
                  (r) => false,
                );
              },
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFFB23B3B),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: Icon(
                            Icons.login,
                            color: FlutterFlowTheme.tertiaryColor,
                            size: 20,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'gid5fjk8' /* Se d??connecter */,
                                ),
                                style: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Avenir Light ',
                                  color: FlutterFlowTheme.customColor7,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: false,
                                ),
                              ),
                            ],
                          ),
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
    );
  }
}
