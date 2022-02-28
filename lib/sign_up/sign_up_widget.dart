import '../auth/auth_util.dart';
import '../components/back2_widget.dart';
import '../components/nav_logo_widget.dart';
import '../conditions_utilisation/conditions_utilisation_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../phone_verification_sign_up/phone_verification_sign_up_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
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
          image: DecorationImage(
            fit: BoxFit.none,
            image: Image.asset(
              'assets/images/Asset_2@4x.png',
            ).image,
          ),
        ),
        child: Stack(
          children: [
            Back2Widget(),
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
                            '8k6ie3sk' /* Créez votre compte */,
                          ),
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Avenir Light ',
                                color:
                                    FlutterFlowTheme.of(context).customColor3,
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
                                labelColor:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Avenir Light ',
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: false,
                                    ),
                                indicatorColor:
                                    FlutterFlowTheme.of(context).tertiaryColor,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
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
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x7DFFFFFF),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                ),
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .subtitle1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor3,
                                                    fontSize: 18,
                                                    useGoogleFonts: false,
                                                  ),
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
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
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .customColor9,
                                                prefixIcon: Icon(
                                                  Icons.lock_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                ),
                                                suffixIcon: InkWell(
                                                  onTap: () => setState(
                                                    () => pwdVisibility =
                                                        !pwdVisibility,
                                                  ),
                                                  child: Icon(
                                                    pwdVisibility
                                                        ? Icons
                                                            .visibility_outlined
                                                        : Icons
                                                            .visibility_off_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    size: 22,
                                                  ),
                                                ),
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .subtitle1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor5,
                                                    fontSize: 18,
                                                    useGoogleFonts: false,
                                                  ),
                                              keyboardType:
                                                  TextInputType.visiblePassword,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 10),
                                            child: TextFormField(
                                              controller: pwdConfirmController,
                                              obscureText:
                                                  !pwdConfirmVisibility,
                                              decoration: InputDecoration(
                                                labelText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'e4z8ytmt' /* Confirmez le mot de passe */,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .customColor9,
                                                prefixIcon: Icon(
                                                  Icons.lock_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                ),
                                                suffixIcon: InkWell(
                                                  onTap: () => setState(
                                                    () => pwdConfirmVisibility =
                                                        !pwdConfirmVisibility,
                                                  ),
                                                  child: Icon(
                                                    pwdConfirmVisibility
                                                        ? Icons
                                                            .visibility_outlined
                                                        : Icons
                                                            .visibility_off_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    size: 22,
                                                  ),
                                                ),
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .subtitle1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor3,
                                                    fontSize: 18,
                                                    useGoogleFonts: false,
                                                  ),
                                              keyboardType:
                                                  TextInputType.visiblePassword,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 20, 0, 0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                if (pwdController.text !=
                                                    pwdConfirmController.text) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'yv11bv53' /* Le mots de passe ne correspond... */,
                                                        ),
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

                                                await Navigator.push(
                                                  context,
                                                  PageTransition(
                                                    type: PageTransitionType
                                                        .leftToRight,
                                                    duration: Duration(
                                                        milliseconds: 200),
                                                    reverseDuration: Duration(
                                                        milliseconds: 200),
                                                    child:
                                                        ConditionsUtilisationWidget(),
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
                                                    FlutterFlowTheme.of(context)
                                                        .customColor8,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily:
                                                              'Avenir Light ',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor7,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts: false,
                                                        ),
                                                elevation: 5,
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .customColor6,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
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
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .customColor9,
                                                prefixIcon: Icon(
                                                  Icons.phone_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                ),
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .subtitle1
                                                  .override(
                                                    fontFamily: 'Avenir Light ',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor5,
                                                    useGoogleFonts: false,
                                                  ),
                                              keyboardType: TextInputType.phone,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 20, 0, 0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                if (phoneController
                                                        .text.isEmpty ||
                                                    !phoneController.text
                                                        .startsWith('+')) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'ztpxnq81' /* Numéro de téléphone obligatoir... */,
                                                      )),
                                                    ),
                                                  );
                                                  return;
                                                }
                                                await beginPhoneAuth(
                                                  context: context,
                                                  phoneNumber:
                                                      phoneController.text,
                                                  onCodeSent: () async {
                                                    await Navigator
                                                        .pushAndRemoveUntil(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            PhoneVerificationSignUpWidget(),
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
                                                    FlutterFlowTheme.of(context)
                                                        .tertiaryColor,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily:
                                                              'Avenir Light ',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor7,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts: false,
                                                        ),
                                                elevation: 5,
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .customColor6,
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
                  NavLogoWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
