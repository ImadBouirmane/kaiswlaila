import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../phone_verification/phone_verification_widget.dart';
import '../signup_step2/signup_step2_widget.dart';
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
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        iconTheme: IconThemeData(color: FlutterFlowTheme.primaryColor),
        automaticallyImplyLeading: true,
        title: Container(
          width: 50,
          height: 50,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            'assets/images/ufpbn_1.jpg',
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(15, 100, 15, 30),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 20, 70),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Création du votre compte',
                      style: FlutterFlowTheme.subtitle1,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        isScrollable: true,
                        labelColor: FlutterFlowTheme.primaryColor,
                        labelStyle: FlutterFlowTheme.bodyText1,
                        indicatorColor: FlutterFlowTheme.primaryColor,
                        indicatorWeight: 2,
                        tabs: [
                          Tab(
                            text: 'Par Email',
                          ),
                          Tab(
                            text: 'Par Téléphone',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
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
                                        labelText: 'Email',
                                        labelStyle:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.primaryColor,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color:
                                                FlutterFlowTheme.primaryColor,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color:
                                                FlutterFlowTheme.primaryColor,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFFFEAFA),
                                        prefixIcon: Icon(
                                          Icons.email_outlined,
                                          color: FlutterFlowTheme.primaryColor,
                                        ),
                                      ),
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.primaryColor,
                                      ),
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: TextFormField(
                                      controller: pwdController,
                                      obscureText: !pwdVisibility,
                                      decoration: InputDecoration(
                                        labelText: 'Mot de passe',
                                        labelStyle:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.primaryColor,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color:
                                                FlutterFlowTheme.primaryColor,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color:
                                                FlutterFlowTheme.primaryColor,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFFFEAFA),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () =>
                                                pwdVisibility = !pwdVisibility,
                                          ),
                                          child: Icon(
                                            pwdVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color:
                                                FlutterFlowTheme.primaryColor,
                                            size: 22,
                                          ),
                                        ),
                                      ),
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.primaryColor,
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
                                        labelText: 'Confirmez le mot de passe',
                                        labelStyle:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.primaryColor,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color:
                                                FlutterFlowTheme.primaryColor,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color:
                                                FlutterFlowTheme.primaryColor,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFFFEAFA),
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
                                                FlutterFlowTheme.primaryColor,
                                            size: 22,
                                          ),
                                        ),
                                      ),
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.primaryColor,
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
                                                "Passwords don't match!",
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
                                            type:
                                                PageTransitionType.leftToRight,
                                            duration:
                                                Duration(milliseconds: 200),
                                            reverseDuration:
                                                Duration(milliseconds: 200),
                                            child: SignupStep2Widget(),
                                          ),
                                        );
                                      },
                                      text: 'Créer',
                                      options: FFButtonOptions(
                                        width: 200,
                                        height: 50,
                                        color: FlutterFlowTheme.primaryColor,
                                        textStyle:
                                            FlutterFlowTheme.subtitle2.override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        elevation: 5,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
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
                                        labelText: 'Votre Téléphone',
                                        labelStyle:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.primaryColor,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color:
                                                FlutterFlowTheme.primaryColor,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color:
                                                FlutterFlowTheme.primaryColor,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFFFEAFA),
                                        prefixIcon: Icon(
                                          Icons.phone_rounded,
                                          color: FlutterFlowTheme.primaryColor,
                                        ),
                                      ),
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.primaryColor,
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
                                            await Navigator.pushAndRemoveUntil(
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
                                      text: 'Créer',
                                      options: FFButtonOptions(
                                        width: 200,
                                        height: 50,
                                        color: FlutterFlowTheme.primaryColor,
                                        textStyle:
                                            FlutterFlowTheme.subtitle2.override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        elevation: 5,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
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
            ],
          ),
        ),
      ),
    );
  }
}
