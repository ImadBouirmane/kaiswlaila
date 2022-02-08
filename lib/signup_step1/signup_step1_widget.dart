import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../phone_verification/phone_verification_widget.dart';
import '../signup_step2/signup_step2_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupStep1Widget extends StatefulWidget {
  const SignupStep1Widget({Key key}) : super(key: key);

  @override
  _SignupStep1WidgetState createState() => _SignupStep1WidgetState();
}

class _SignupStep1WidgetState extends State<SignupStep1Widget> {
  TextEditingController emailController;
  TextEditingController pwdController;
  bool pwdVisibility;
  TextEditingController pwdConfirmController;
  bool pwdConfirmVisibility;
  TextEditingController phoneController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    pwdController = TextEditingController();
    pwdVisibility = false;
    pwdConfirmController = TextEditingController();
    pwdConfirmVisibility = false;
    phoneController = TextEditingController();
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 20, 70),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        '8k6ie3sk' /* Création du votre compte */,
                      ),
                      style: FlutterFlowTheme.title1.override(
                        fontFamily: 'Avenir Light ',
                        color: FlutterFlowTheme.customColor3,
                        fontSize: 22,
                        useGoogleFonts: false,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, 0.1),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: DefaultTabController(
                      length: 2,
                      initialIndex: 0,
                      child: Column(
                        children: [
                          TabBar(
                            isScrollable: true,
                            labelColor: FlutterFlowTheme.tertiaryColor,
                            labelStyle: FlutterFlowTheme.subtitle1.override(
                              fontFamily: 'Avenir Light ',
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: false,
                            ),
                            indicatorColor: FlutterFlowTheme.tertiaryColor,
                            indicatorWeight: 2,
                            tabs: [
                              Tab(
                                text: FFLocalizations.of(context).getText(
                                  'gt7vkk2a' /* Par Email */,
                                ),
                              ),
                              Tab(
                                text: FFLocalizations.of(context).getText(
                                  '4frrvv2y' /* Par Téléphone */,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 30, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 10),
                                        child: TextFormField(
                                          controller: emailController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'z42km0y1' /* Email */,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x7DFFFFFF),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x7DFFFFFF),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            filled: true,
                                            fillColor: Color(0x7DFFFFFF),
                                            prefixIcon: Icon(
                                              Icons.email_outlined,
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                            ),
                                          ),
                                          style: FlutterFlowTheme.subtitle1
                                              .override(
                                            fontFamily: 'Avenir Light ',
                                            color:
                                                FlutterFlowTheme.customColor3,
                                            fontSize: 18,
                                            useGoogleFonts: false,
                                          ),
                                          keyboardType:
                                              TextInputType.emailAddress,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 10),
                                        child: TextFormField(
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            'pwdController',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          controller: pwdController,
                                          obscureText: !pwdVisibility,
                                          decoration: InputDecoration(
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'fqj0yzbm' /* Mot de passe */,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.customColor9,
                                            suffixIcon: InkWell(
                                              onTap: () => setState(
                                                () => pwdVisibility =
                                                    !pwdVisibility,
                                              ),
                                              child: Icon(
                                                pwdVisibility
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined,
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                size: 22,
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.subtitle1
                                              .override(
                                            fontFamily: 'Avenir Light ',
                                            color:
                                                FlutterFlowTheme.customColor5,
                                            fontSize: 18,
                                            useGoogleFonts: false,
                                          ),
                                          keyboardType:
                                              TextInputType.visiblePassword,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 10),
                                        child: TextFormField(
                                          controller: pwdConfirmController,
                                          obscureText: !pwdConfirmVisibility,
                                          decoration: InputDecoration(
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'e4z8ytmt' /* Confirmez le mot de passe */,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.customColor9,
                                            suffixIcon: InkWell(
                                              onTap: () => setState(
                                                () => pwdConfirmVisibility =
                                                    !pwdConfirmVisibility,
                                              ),
                                              child: Icon(
                                                pwdConfirmVisibility
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined,
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                size: 22,
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.subtitle1
                                              .override(
                                            fontFamily: 'Avenir Light ',
                                            color:
                                                FlutterFlowTheme.customColor3,
                                            fontSize: 18,
                                            useGoogleFonts: false,
                                          ),
                                          keyboardType:
                                              TextInputType.visiblePassword,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 20, 0, 0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            if (pwdController.text !=
                                                pwdConfirmController.text) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Passwords don\'t match!',
                                                  ),
                                                ),
                                              );
                                              return;
                                            }

                                            final user =
                                                await createAccountWithEmail(
                                              context,
                                              emailController.text,
                                              pwdController.text,
                                            );
                                            if (user == null) {
                                              return;
                                            }

                                            final usersCreateData =
                                                createUsersRecordData(
                                              email: emailController.text,
                                              pwd: pwdController.text,
                                              createdTime: getCurrentTimestamp,
                                            );
                                            await UsersRecord.collection
                                                .doc(user.uid)
                                                .update(usersCreateData);

                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType
                                                    .leftToRight,
                                                duration:
                                                    Duration(milliseconds: 200),
                                                reverseDuration:
                                                    Duration(milliseconds: 200),
                                                child: SignupStep2Widget(),
                                              ),
                                            );
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'syi85ic2' /* Créer */,
                                          ),
                                          options: FFButtonOptions(
                                            width: 200,
                                            height: 50,
                                            color:
                                                FlutterFlowTheme.customColor9,
                                            textStyle: FlutterFlowTheme
                                                .subtitle2
                                                .override(
                                              fontFamily: 'Avenir Light ',
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: false,
                                            ),
                                            elevation: 5,
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              width: 1,
                                            ),
                                            borderRadius: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 30, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 10),
                                        child: TextFormField(
                                          controller: phoneController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'm0dlzs3r' /* Votre Téléphone */,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.customColor9,
                                            prefixIcon: Icon(
                                              Icons.phone_rounded,
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                            ),
                                          ),
                                          style: FlutterFlowTheme.subtitle1
                                              .override(
                                            fontFamily: 'Avenir Light ',
                                            color:
                                                FlutterFlowTheme.customColor5,
                                            useGoogleFonts: false,
                                          ),
                                          keyboardType: TextInputType.phone,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 20, 0, 0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            if (phoneController.text.isEmpty ||
                                                !phoneController.text
                                                    .startsWith('+')) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                      'Phone Number is required and has to start with +.'),
                                                ),
                                              );
                                              return;
                                            }
                                            await beginPhoneAuth(
                                              context: context,
                                              phoneNumber: phoneController.text,
                                              onCodeSent: () async {
                                                await Navigator
                                                    .pushAndRemoveUntil(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        PhoneVerificationWidget(),
                                                  ),
                                                  (r) => false,
                                                );
                                              },
                                            );
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'jfb6a30q' /* Créer */,
                                          ),
                                          options: FFButtonOptions(
                                            width: 200,
                                            height: 50,
                                            color:
                                                FlutterFlowTheme.customColor9,
                                            textStyle: FlutterFlowTheme
                                                .subtitle2
                                                .override(
                                              fontFamily: 'Avenir Light ',
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: false,
                                            ),
                                            elevation: 5,
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              width: 1,
                                            ),
                                            borderRadius: 20,
                                          ),
                                        ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
