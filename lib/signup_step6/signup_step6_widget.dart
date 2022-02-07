import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../signup_step5/signup_step5_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupStep6Widget extends StatefulWidget {
  const SignupStep6Widget({Key key}) : super(key: key);

  @override
  _SignupStep6WidgetState createState() => _SignupStep6WidgetState();
}

class _SignupStep6WidgetState extends State<SignupStep6Widget> {
  String choiceChips1Value;
  String choiceChips2Value;
  String choiceChips3Value;
  String choiceChips4Value;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
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
                    onPressed: () {
                      print('IconButton pressed ...');
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
                padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Vos intérêts',
                            style: FlutterFlowTheme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                    Wrap(
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
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                          child: FlutterFlowChoiceChips(
                            initialOption: choiceChips1Value ??= 'Jeux',
                            options: [
                              ChipData('Jeux', FontAwesomeIcons.gamepad),
                              ChipData('Films/Cinéma', FontAwesomeIcons.film),
                              ChipData('Sports')
                            ],
                            onChanged: (val) =>
                                setState(() => choiceChips1Value = val),
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
                              backgroundColor: Color(0xFFFFEAFA),
                              textStyle: FlutterFlowTheme.bodyText2.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.primaryColor,
                              ),
                              iconColor: FlutterFlowTheme.primaryColor,
                              iconSize: 18,
                              elevation: 4,
                            ),
                            chipSpacing: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                          child: FlutterFlowChoiceChips(
                            initialOption: choiceChips2Value ??= 'Mode',
                            options: [
                              ChipData('Mode'),
                              ChipData('Nature/Jardinage'),
                              ChipData('Voyage')
                            ],
                            onChanged: (val) =>
                                setState(() => choiceChips2Value = val),
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
                              backgroundColor: Color(0xFFFFEAFA),
                              textStyle: FlutterFlowTheme.bodyText2.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.primaryColor,
                              ),
                              iconColor: FlutterFlowTheme.primaryColor,
                              iconSize: 18,
                              elevation: 4,
                            ),
                            chipSpacing: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                          child: FlutterFlowChoiceChips(
                            initialOption: choiceChips3Value ??= 'Art',
                            options: [
                              ChipData('Art'),
                              ChipData('Méditation'),
                              ChipData('Photographie')
                            ],
                            onChanged: (val) =>
                                setState(() => choiceChips3Value = val),
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
                              backgroundColor: Color(0xFFFFEAFA),
                              textStyle: FlutterFlowTheme.bodyText2.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.primaryColor,
                              ),
                              iconColor: FlutterFlowTheme.primaryColor,
                              iconSize: 18,
                              elevation: 4,
                            ),
                            chipSpacing: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                          child: FlutterFlowChoiceChips(
                            initialOption: choiceChips4Value ??= 'Famille',
                            options: [
                              ChipData('Famille'),
                              ChipData('Amis'),
                              ChipData('Sorties/Soirées')
                            ],
                            onChanged: (val) =>
                                setState(() => choiceChips4Value = val),
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
                              backgroundColor: Color(0xFFFFEAFA),
                              textStyle: FlutterFlowTheme.bodyText2.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.primaryColor,
                              ),
                              iconColor: FlutterFlowTheme.primaryColor,
                              iconSize: 18,
                              elevation: 4,
                            ),
                            chipSpacing: 30,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              FFButtonWidget(
                onPressed: () async {
                  final usersUpdateData = createUsersRecordData(
                    interest1: choiceChips1Value,
                    interest2: choiceChips3Value,
                    interest3: choiceChips3Value,
                    interest4: choiceChips4Value,
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
    );
  }
}
