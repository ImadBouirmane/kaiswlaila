import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneVerificationSignInWidget extends StatefulWidget {
  const PhoneVerificationSignInWidget({Key key}) : super(key: key);

  @override
  _PhoneVerificationSignInWidgetState createState() =>
      _PhoneVerificationSignInWidgetState();
}

class _PhoneVerificationSignInWidgetState
    extends State<PhoneVerificationSignInWidget> {
  TextEditingController codeController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    codeController = TextEditingController();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'PhoneVerificationSignIn'});
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
            fit: BoxFit.cover,
            image: Image.asset(
              'assets/images/Asset_6@4x.png',
            ).image,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 30),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    borderWidth: 1,
                    buttonSize: 60,
                    icon: Icon(
                      Icons.chevron_left,
                      color: FlutterFlowTheme.of(context).customColor10,
                      size: 30,
                    ),
                    onPressed: () async {
                      logFirebaseEvent(
                          'PHONE_VERIFICATION_SIGN_IN_chevron_left_');
                      logFirebaseEvent('IconButton_Navigate-Back');
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 30),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'o01u96z7' /* Code de vérification */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(65, 0, 65, 0),
                      child: TextFormField(
                        controller: codeController,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: FFLocalizations.of(context).getText(
                            'ex66o4hj' /* _ _ _ _ */,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.of(context).customColor9,
                          prefixIcon: Icon(
                            Icons.content_paste,
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Avenir Light ',
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: false,
                            ),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 30),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () async {
                        logFirebaseEvent(
                            'PHONE_VERIFICATION_SIGN_IN_Text_dxhep0iv');
                        logFirebaseEvent('Text_Auth');
                        final smsCodeVal = codeController.text;
                        if (smsCodeVal == null || smsCodeVal.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(FFLocalizations.of(context).getText(
                                'xndhofbj' /* Entrez le code de vérification... */,
                              )),
                            ),
                          );
                          return;
                        }
                        final phoneVerifiedUser = await verifySmsCode(
                          context: context,
                          smsCode: smsCodeVal,
                        );
                        if (phoneVerifiedUser == null) {
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
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'n795y4i7' /* Renvoyer ! */,
                        ),
                        style: FlutterFlowTheme.of(context).subtitle1.override(
                              fontFamily: 'Avenir Light ',
                              color: FlutterFlowTheme.of(context).customColor10,
                              useGoogleFonts: false,
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
                            'PHONE_VERIFICATION_SIGN_IN_VALIDER_BTN_O');
                        logFirebaseEvent('Button_Auth');
                        final smsCodeVal = codeController.text;
                        if (smsCodeVal == null || smsCodeVal.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(FFLocalizations.of(context).getText(
                                'xndhofbj' /* Entrez le code de vérification... */,
                              )),
                            ),
                          );
                          return;
                        }
                        final phoneVerifiedUser = await verifySmsCode(
                          context: context,
                          smsCode: smsCodeVal,
                        );
                        if (phoneVerifiedUser == null) {
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
                        'vj7cblh5' /* Valider */,
                      ),
                      options: FFButtonOptions(
                        width: 160,
                        height: 50,
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle2
                            .override(
                              fontFamily: 'Avenir Light ',
                              color: FlutterFlowTheme.of(context).customColor7,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                        elevation: 5,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).customColor6,
                          width: 1,
                        ),
                        borderRadius: 20,
                      ),
                    ),
                  ],
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
