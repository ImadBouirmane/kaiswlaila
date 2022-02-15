import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordResetWidget extends StatefulWidget {
  const PasswordResetWidget({Key key}) : super(key: key);

  @override
  _PasswordResetWidgetState createState() => _PasswordResetWidgetState();
}

class _PasswordResetWidgetState extends State<PasswordResetWidget> {
  TextEditingController pwdConfirmController;
  bool pwdConfirmVisibility;
  TextEditingController pwdNewController;
  bool pwdNewVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    pwdConfirmController = TextEditingController();
    pwdConfirmVisibility = false;
    pwdNewController = TextEditingController();
    pwdNewVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.none,
            image: Image.asset(
              'assets/images/Asset_5@4x.png',
            ).image,
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
                        color: FlutterFlowTheme.of(context).customColor10,
                        size: 30,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'nnk5zqv0' /* Réinitialisez votre mot de pas... */,
                  ),
                  style: FlutterFlowTheme.of(context).subtitle1,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, 0.4),
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
                      Align(
                        alignment: AlignmentDirectional(0, -0.6),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: TextFormField(
                            controller: pwdNewController,
                            obscureText: !pwdNewVisibility,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                'mjgdwdyh' /* Nouveau mot de passe */,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              filled: true,
                              fillColor:
                                  FlutterFlowTheme.of(context).customColor9,
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => pwdNewVisibility = !pwdNewVisibility,
                                ),
                                child: Icon(
                                  pwdNewVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 22,
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .subtitle1
                                .override(
                                  fontFamily: 'Avenir Light ',
                                  color:
                                      FlutterFlowTheme.of(context).customColor5,
                                  useGoogleFonts: false,
                                ),
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, -0.6),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                          child: TextFormField(
                            controller: pwdConfirmController,
                            obscureText: !pwdConfirmVisibility,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                'l7ftc8ur' /* Confirmer le mot de passe */,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              filled: true,
                              fillColor:
                                  FlutterFlowTheme.of(context).customColor9,
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => pwdConfirmVisibility =
                                      !pwdConfirmVisibility,
                                ),
                                child: Icon(
                                  pwdConfirmVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 22,
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .subtitle1
                                .override(
                                  fontFamily: 'Avenir Light ',
                                  color:
                                      FlutterFlowTheme.of(context).customColor5,
                                  useGoogleFonts: false,
                                ),
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              final usersUpdateData = createUsersRecordData(
                                pwd: pwdNewController.text,
                              );
                              await currentUserReference
                                  .update(usersUpdateData);
                            },
                            text: FFLocalizations.of(context).getText(
                              '9rsctwyn' /* Enregistrer */,
                            ),
                            options: FFButtonOptions(
                              width: 160,
                              height: 50,
                              color: FlutterFlowTheme.of(context).customColor9,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Avenir Light ',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                width: 1,
                              ),
                              borderRadius: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Asset_10@4x_copie.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
