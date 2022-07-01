import '../auth/auth_util.dart';
import '../components/back1_widget.dart';
import '../components/nav_logo_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../phone_verification_sign_in/phone_verification_sign_in_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneSignInWidget extends StatefulWidget {
  const PhoneSignInWidget({Key key}) : super(key: key);

  @override
  _PhoneSignInWidgetState createState() => _PhoneSignInWidgetState();
}

class _PhoneSignInWidgetState extends State<PhoneSignInWidget> {
  TextEditingController phoneController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'PhoneSignIn'});
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
            fit: BoxFit.cover,
            image: Image.asset(
              'assets/images/Asset_5@4x.png',
            ).image,
          ),
        ),
        child: Stack(
          children: [
            Back1Widget(),
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
                                'PHONE_SIGN_IN_chevron_left_outlined_ICN_');
                            logFirebaseEvent('IconButton_Navigate-Back');
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
                        'b77nv5sa' /* Connectez-vous par téléphone */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0, 0.2),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: TextFormField(
                          controller: phoneController,
                          onFieldSubmitted: (_) async {
                            logFirebaseEvent(
                                'PHONE_SIGN_IN_phone_ON_TEXTFIELD_SUBMIT');
                            logFirebaseEvent('phone_Auth');
                            final phoneNumberVal = phoneController.text;
                            if (phoneNumberVal == null ||
                                phoneNumberVal.isEmpty ||
                                !phoneNumberVal.startsWith('+')) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content:
                                      Text(FFLocalizations.of(context).getText(
                                    'ztpxnq81' /* Numéro de téléphone obligatoir... */,
                                  )),
                                ),
                              );
                              return;
                            }
                            await beginPhoneAuth(
                              context: context,
                              phoneNumber: phoneNumberVal,
                              onCodeSent: () async {
                                await Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        PhoneVerificationSignInWidget(),
                                  ),
                                  (r) => false,
                                );
                              },
                            );
                          },
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'eqlje8ar' /* Numéro de téléphone */,
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
                            prefixIcon: Icon(
                              Icons.phone_rounded,
                              color: FlutterFlowTheme.of(context).primaryColor,
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
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'PHONE_SIGN_IN_PAGE_phoneRegister_ON_TAP');
                          if (valueOrDefault(
                              currentUserDocument?.isRegistered, false)) {
                            return;
                          }

                          logFirebaseEvent('phoneRegister_Auth');
                          final phoneNumberVal = phoneController.text;
                          if (phoneNumberVal == null ||
                              phoneNumberVal.isEmpty ||
                              !phoneNumberVal.startsWith('+')) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content:
                                    Text(FFLocalizations.of(context).getText(
                                  'ztpxnq81' /* Numéro de téléphone obligatoir... */,
                                )),
                              ),
                            );
                            return;
                          }
                          await beginPhoneAuth(
                            context: context,
                            phoneNumber: phoneNumberVal,
                            onCodeSent: () async {
                              await Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      PhoneVerificationSignInWidget(),
                                ),
                                (r) => false,
                              );
                            },
                          );
                        },
                        text: FFLocalizations.of(context).getText(
                          '36gt66mz' /* Connecter */,
                        ),
                        options: FFButtonOptions(
                          width: 200,
                          height: 50,
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Avenir Light ',
                                color:
                                    FlutterFlowTheme.of(context).customColor7,
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
                    ),
                  ),
                  Spacer(),
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
