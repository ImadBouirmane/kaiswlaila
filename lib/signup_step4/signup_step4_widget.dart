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
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    dayController = TextEditingController();
    monthController = TextEditingController();
    yearController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
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
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(-0.2, 0),
                      child: Container(
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
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 50, 30, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Sexe',
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
                        initialOption: genderValue ??= 'Masculin',
                        options: [ChipData('Masculin'), ChipData('Feminin')],
                        onChanged: (val) => setState(() => genderValue = val),
                        selectedChipStyle: ChipStyle(
                          backgroundColor: FlutterFlowTheme.primaryColor,
                          textStyle: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                          iconColor: Colors.white,
                          iconSize: 18,
                          elevation: 4,
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: Colors.white,
                          textStyle: FlutterFlowTheme.bodyText2.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF262D34),
                          ),
                          iconColor: Color(0xFF262D34),
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
                      'Date de naissance',
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
                            labelText: 'Jour',
                            labelStyle: FlutterFlowTheme.subtitle1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.customColor5,
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
                          ),
                          style: FlutterFlowTheme.subtitle1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.customColor5,
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
                            labelText: 'Mois',
                            labelStyle: FlutterFlowTheme.subtitle1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.customColor5,
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
                          ),
                          style: FlutterFlowTheme.subtitle1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.customColor5,
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
                          labelText: 'Année',
                          labelStyle: FlutterFlowTheme.subtitle1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.customColor5,
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
                        ),
                        style: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.customColor5,
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
                      'Sélectionnez votre pays:',
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
                        'Maroc',
                        'Algérie',
                        'Tunisie',
                        'Libye',
                        'Mauritanie',
                        'Egypte',
                        'Saudi Arabia',
                        'UAE',
                        'Oman',
                        'Qatar',
                        'Bahrain',
                        'Kuwait',
                        'Soudan',
                        'Syrie',
                        'Liban',
                        'Turquie'
                      ].toList(),
                      onChanged: (val) => setState(() => countryValue = val),
                      width: 200,
                      height: 50,
                      textStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      hintText: 'Pays',
                      fillColor: Colors.white,
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
                        text: 'Continuez',
                        options: FFButtonOptions(
                          width: 200,
                          height: 50,
                          color: FlutterFlowTheme.primaryColor,
                          textStyle: FlutterFlowTheme.subtitle2.override(
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
