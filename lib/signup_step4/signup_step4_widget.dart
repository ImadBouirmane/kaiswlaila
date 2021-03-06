import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../signup_step5/signup_step5_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupStep4Widget extends StatefulWidget {
  const SignupStep4Widget({Key key}) : super(key: key);

  @override
  _SignupStep4WidgetState createState() => _SignupStep4WidgetState();
}

class _SignupStep4WidgetState extends State<SignupStep4Widget> {
  String countryValue;
  String genderValue;
  TextEditingController dayController;
  TextEditingController monthController;
  TextEditingController yearController;
  TextEditingController textController4;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    dayController = TextEditingController();
    monthController = TextEditingController();
    yearController = TextEditingController();
    textController4 = TextEditingController();
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
              Row(
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 50, 30, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'nlcf25gn' /* Sexe */,
                      ),
                      style: FlutterFlowTheme.subtitle1,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: FlutterFlowChoiceChips(
                        initialOption: genderValue ??=
                            FFLocalizations.of(context).getText(
                          'tb24brgs' /* Masculin */,
                        ),
                        options: [
                          ChipData(FFLocalizations.of(context).getText(
                            'tb24brgs' /* Masculin */,
                          )),
                          ChipData(FFLocalizations.of(context).getText(
                            'ozp4v9m5' /* Feminin */,
                          ))
                        ],
                        onChanged: (val) => setState(() => genderValue = val),
                        selectedChipStyle: ChipStyle(
                          backgroundColor: FlutterFlowTheme.primaryColor,
                          textStyle: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Avenir Light ',
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: false,
                          ),
                          iconColor: Colors.white,
                          iconSize: 18,
                          elevation: 4,
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: FlutterFlowTheme.customColor9,
                          textStyle: FlutterFlowTheme.bodyText2.override(
                            fontFamily: 'Avenir Light ',
                            color: FlutterFlowTheme.customColor5,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: false,
                          ),
                          iconColor: Color(0x00000000),
                          iconSize: 18,
                          elevation: 4,
                        ),
                        chipSpacing: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'djgnn95q' /* Date de naissance */,
                      ),
                      style: FlutterFlowTheme.subtitle1,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                        child: TextFormField(
                          controller: dayController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'wj57ucb7' /* Jour */,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.primaryColor,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.primaryColor,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.customColor9,
                          ),
                          style: FlutterFlowTheme.subtitle1.override(
                            fontFamily: 'Avenir Light ',
                            color: FlutterFlowTheme.customColor5,
                            useGoogleFonts: false,
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                        child: TextFormField(
                          controller: monthController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              '61gljfgg' /* Mois */,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.primaryColor,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.primaryColor,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.customColor9,
                          ),
                          style: FlutterFlowTheme.subtitle1.override(
                            fontFamily: 'Avenir Light ',
                            color: FlutterFlowTheme.customColor5,
                            useGoogleFonts: false,
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: yearController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: FFLocalizations.of(context).getText(
                            '63amt7r1' /* Ann??e */,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.primaryColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.primaryColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.customColor9,
                        ),
                        style: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Avenir Light ',
                          color: FlutterFlowTheme.customColor5,
                          useGoogleFonts: false,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'vdfau4s7' /* Votre Ville: */,
                      ),
                      style: FlutterFlowTheme.subtitle1,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 90, 0),
                        child: TextFormField(
                          controller: textController4,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'rxo3jbg1' /* Ville */,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.primaryColor,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.primaryColor,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.customColor9,
                          ),
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Avenir Light ',
                            color: FlutterFlowTheme.customColor5,
                            fontSize: 18,
                            useGoogleFonts: false,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'somnr7cs' /* S??lectionnez votre pays: */,
                      ),
                      style: FlutterFlowTheme.subtitle1,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowDropDown(
                      options: [
                        FFLocalizations.of(context).getText(
                          '9afmd91m' /* Maroc */,
                        ),
                        FFLocalizations.of(context).getText(
                          'eapr3xqf' /* Alg??rie */,
                        ),
                        FFLocalizations.of(context).getText(
                          'pk65n8cj' /* Tunisie */,
                        ),
                        FFLocalizations.of(context).getText(
                          't9yzd88w' /* Libye */,
                        ),
                        FFLocalizations.of(context).getText(
                          'f8it7sfx' /* Mauritanie */,
                        ),
                        FFLocalizations.of(context).getText(
                          'nedwt14c' /* Egypte */,
                        ),
                        FFLocalizations.of(context).getText(
                          'u2wowc5b' /* Saudi Arabia */,
                        ),
                        FFLocalizations.of(context).getText(
                          '9b4quj22' /* UAE */,
                        ),
                        FFLocalizations.of(context).getText(
                          'azj4d96u' /* Oman */,
                        ),
                        FFLocalizations.of(context).getText(
                          'z57lorym' /* Qatar */,
                        ),
                        FFLocalizations.of(context).getText(
                          'kgyotstk' /* Bahrain */,
                        ),
                        FFLocalizations.of(context).getText(
                          'uyecosi8' /* Kuwait */,
                        ),
                        FFLocalizations.of(context).getText(
                          'jmebzwjb' /* Soudan */,
                        ),
                        FFLocalizations.of(context).getText(
                          'd2hgu81u' /* Syrie */,
                        ),
                        FFLocalizations.of(context).getText(
                          'a41foqe4' /* Liban */,
                        ),
                        FFLocalizations.of(context).getText(
                          'bc1sw9k4' /* Turquie */,
                        )
                      ].toList(),
                      onChanged: (val) => setState(() => countryValue = val),
                      width: 200,
                      height: 50,
                      textStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Avenir Light ',
                        color: FlutterFlowTheme.customColor5,
                        fontSize: 18,
                        useGoogleFonts: false,
                      ),
                      hintText: FFLocalizations.of(context).getText(
                        'a4tlfb4j' /* Pays */,
                      ),
                      fillColor: FlutterFlowTheme.customColor9,
                      elevation: 2,
                      borderColor: FlutterFlowTheme.primaryColor,
                      borderWidth: 0,
                      borderRadius: 20,
                      margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                      hidesUnderline: true,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, 1),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          final usersUpdateData = createUsersRecordData(
                            gender: genderValue,
                            day: dayController.text,
                            month: monthController.text,
                            year: yearController.text,
                            country: countryValue,
                            city: currentUserDocument?.city,
                          );
                          await currentUserReference.update(usersUpdateData);
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.leftToRight,
                              duration: Duration(milliseconds: 200),
                              reverseDuration: Duration(milliseconds: 200),
                              child: SignupStep5Widget(),
                            ),
                          );
                        },
                        text: FFLocalizations.of(context).getText(
                          'hwte74bp' /* Continuez */,
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
            ],
          ),
        ),
      ),
    );
  }
}
