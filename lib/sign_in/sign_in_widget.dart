import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_language_selector.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../onboarding/onboarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInWidget extends StatefulWidget {
  const SignInWidget({Key key}) : super(key: key);

  @override
  _SignInWidgetState createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'circleImageOnPageLoadAnimation': AnimationInfo(
      curve: Curves.linear,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 49),
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
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: Visibility(
        visible: responsiveVisibility(
          context: context,
          desktop: false,
        ),
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
            padding: EdgeInsetsDirectional.fromSTEB(10, 50, 10, 20),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, -0.55),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlutterFlowLanguageSelector(
                        width: 100,
                        backgroundColor: FlutterFlowTheme.customColor9,
                        borderColor: FlutterFlowTheme.customColor6,
                        dropdownColor: FlutterFlowTheme.customColor9,
                        dropdownIconColor: FlutterFlowTheme.secondaryColor,
                        borderRadius: 20,
                        textStyle: TextStyle(
                          color: FlutterFlowTheme.secondaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                        hideFlags: true,
                        flagSize: 24,
                        flagTextGap: 8,
                        currentLanguage:
                            FFLocalizations.of(context).languageCode,
                        languages: FFLocalizations.languages(),
                        onChanged: (lang) => setAppLanguage(context, lang),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, -0.1),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/Asset_8@4x_copie.png',
                          ),
                        ).animated(
                            [animationsMap['circleImageOnPageLoadAnimation']]),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'jgtruzax' /* Trouver un partenaire */,
                        ),
                        style: FlutterFlowTheme.title1.override(
                          fontFamily: 'Avenir Light ',
                          color: FlutterFlowTheme.secondaryColor,
                          fontWeight: FontWeight.w900,
                          useGoogleFonts: false,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 50),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'iuxqzaus' /* Le partenaire que vous cherche... */,
                          ),
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.subtitle2.override(
                            fontFamily: 'Avenir Light ',
                            color: FlutterFlowTheme.tertiaryColor,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                  child: FFButtonWidget(
                    onPressed: () async {
                      final user = await signInWithGoogle(context);
                      if (user == null) {
                        return;
                      }
                      await Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePageWidget(),
                        ),
                        (r) => false,
                      );
                    },
                    text: FFLocalizations.of(context).getText(
                      '5jjrerod' /* Connectez-vous via Google */,
                    ),
                    icon: FaIcon(
                      FontAwesomeIcons.google,
                    ),
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 60,
                      color: FlutterFlowTheme.secondaryColor,
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Avenir Light ',
                        color: Colors.white,
                        useGoogleFonts: false,
                      ),
                      elevation: 5,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 30,
                    ),
                  ),
                ),
                isAndroid
                    ? Container()
                    : FFButtonWidget(
                        onPressed: () async {
                          final user = await signInWithApple(context);
                          if (user == null) {
                            return;
                          }
                          await Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePageWidget(),
                            ),
                            (r) => false,
                          );
                        },
                        text: FFLocalizations.of(context).getText(
                          'u8ceqrn1' /* Connectez-vous via Apple */,
                        ),
                        icon: FaIcon(
                          FontAwesomeIcons.apple,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 60,
                          color: Colors.black,
                          textStyle: FlutterFlowTheme.subtitle2.override(
                            fontFamily: 'Avenir Light ',
                            color: Colors.white,
                            useGoogleFonts: false,
                          ),
                          elevation: 5,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 30,
                        ),
                      ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'n3vpdygg' /* Vous n'avez pas de compte? */,
                        ),
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Avenir Light ',
                          color: FlutterFlowTheme.tertiaryColor,
                          fontWeight: FontWeight.w500,
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
                              child: OnboardingWidget(),
                            ),
                          );
                        },
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'tjs7xgjs' /* S'inscrire */,
                          ),
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Avenir Light ',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
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
      ),
    );
  }
}
