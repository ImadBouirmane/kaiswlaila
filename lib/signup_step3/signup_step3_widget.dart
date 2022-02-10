import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../signup_step4/signup_step4_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupStep3Widget extends StatefulWidget {
  const SignupStep3Widget({Key key}) : super(key: key);

  @override
  _SignupStep3WidgetState createState() => _SignupStep3WidgetState();
}

class _SignupStep3WidgetState extends State<SignupStep3Widget> {
  TextEditingController bioController;
  TextEditingController fullNameController;
  TextEditingController jobTitleController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    bioController = TextEditingController();
    fullNameController = TextEditingController();
    jobTitleController = TextEditingController();
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
          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
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
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 30),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'e4oxhcn1' /* Base */,
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
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Wrap(
                  spacing: 0,
                  runSpacing: 0,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: TextFormField(
                        controller: fullNameController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: FFLocalizations.of(context).getText(
                            '9vdcx824' /* Nom Complet */,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.primaryColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.primaryColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.customColor9,
                        ),
                        style: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Avenir Light ',
                          color: FlutterFlowTheme.customColor5,
                          fontSize: 16,
                          useGoogleFonts: false,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: TextFormField(
                        controller: jobTitleController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: FFLocalizations.of(context).getText(
                            'ht2oa9j3' /* Fonction */,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.primaryColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.primaryColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.customColor9,
                        ),
                        style: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Avenir Light ',
                          color: FlutterFlowTheme.customColor5,
                          fontSize: 16,
                          useGoogleFonts: false,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: TextFormField(
                        controller: bioController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: FFLocalizations.of(context).getText(
                            '5j9y9uqq' /* Présentez-vous ! */,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.primaryColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.primaryColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.customColor9,
                        ),
                        style: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Avenir Light ',
                          color: FlutterFlowTheme.customColor5,
                          fontSize: 16,
                          useGoogleFonts: false,
                        ),
                        maxLines: 5,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              FFButtonWidget(
                onPressed: () async {
                  final usersUpdateData = createUsersRecordData(
                    displayName: fullNameController.text,
                    function: jobTitleController.text,
                    bio: bioController.text,
                  );
                  await currentUserReference.update(usersUpdateData);
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.leftToRight,
                      duration: Duration(milliseconds: 200),
                      reverseDuration: Duration(milliseconds: 200),
                      child: SignupStep4Widget(),
                    ),
                  );
                },
                text: FFLocalizations.of(context).getText(
                  'kh7tjb9c' /* Continuez */,
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
    );
  }
}
