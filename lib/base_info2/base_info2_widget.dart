import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/back6_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../photos/photos_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseInfo2Widget extends StatefulWidget {
  const BaseInfo2Widget({Key key}) : super(key: key);

  @override
  _BaseInfo2WidgetState createState() => _BaseInfo2WidgetState();
}

class _BaseInfo2WidgetState extends State<BaseInfo2Widget> {
  String countryValue;
  TextEditingController dayController;
  TextEditingController monthController;
  TextEditingController yearController;
  bool femaleValue;
  bool maleValue;
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
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(
              'assets/images/Asset_5@4x.png',
            ).image,
          ),
        ),
        child: Stack(
          children: [
            Back6Widget(),
            Padding(
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
                          color: FlutterFlowTheme.of(context).customColor10,
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
                            'nlcf25gn' /* Sexe: */,
                          ),
                          style: FlutterFlowTheme.of(context).subtitle1,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 20, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              unselectedWidgetColor: Color(0xFF707070),
                            ),
                            child: CheckboxListTile(
                              value: maleValue ??= true,
                              onChanged: (newValue) =>
                                  setState(() => maleValue = newValue),
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  'j7y7bnsa' /* Homme */,
                                ),
                                style: FlutterFlowTheme.of(context).title3,
                              ),
                              activeColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                              checkColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              unselectedWidgetColor: Color(0xFF707070),
                            ),
                            child: CheckboxListTile(
                              value: femaleValue ??= false,
                              onChanged: (newValue) =>
                                  setState(() => femaleValue = newValue),
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  '7zi3sr3r' /* Féminin */,
                                ),
                                style: FlutterFlowTheme.of(context).title3,
                              ),
                              activeColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                              checkColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
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
                            'djgnn95q' /* Date de naissance: */,
                          ),
                          style: FlutterFlowTheme.of(context).subtitle1,
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                            child: TextFormField(
                              controller: dayController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'wj57ucb7' /* Jour */,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).customColor9,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: 'Avenir Light ',
                                    color: FlutterFlowTheme.of(context)
                                        .customColor5,
                                    useGoogleFonts: false,
                                  ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                            child: TextFormField(
                              controller: monthController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  '61gljfgg' /* Mois */,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).customColor9,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: 'Avenir Light ',
                                    color: FlutterFlowTheme.of(context)
                                        .customColor5,
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
                                '63amt7r1' /* Année */,
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
                            ),
                            style: FlutterFlowTheme.of(context)
                                .subtitle1
                                .override(
                                  fontFamily: 'Avenir Light ',
                                  color:
                                      FlutterFlowTheme.of(context).customColor5,
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
                            'vdfau4s7' /* Sélectionnez votre ville: */,
                          ),
                          style: FlutterFlowTheme.of(context).subtitle1,
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 90, 0),
                            child: TextFormField(
                              controller: textController4,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'rxo3jbg1' /* Ville */,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).customColor9,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Avenir Light ',
                                    color: FlutterFlowTheme.of(context)
                                        .customColor5,
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
                            'somnr7cs' /* Sélectionnez votre pays: */,
                          ),
                          style: FlutterFlowTheme.of(context).subtitle1,
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
                              'eapr3xqf' /* Algérie */,
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
                          onChanged: (val) =>
                              setState(() => countryValue = val),
                          width: 200,
                          height: 50,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Avenir Light ',
                                color:
                                    FlutterFlowTheme.of(context).customColor5,
                                fontSize: 18,
                                useGoogleFonts: false,
                              ),
                          hintText: FFLocalizations.of(context).getText(
                            'a4tlfb4j' /* Pays */,
                          ),
                          fillColor: FlutterFlowTheme.of(context).tertiaryColor,
                          elevation: 2,
                          borderColor:
                              FlutterFlowTheme.of(context).primaryColor,
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
                                day: dayController.text,
                                month: monthController.text,
                                year: yearController.text,
                                country: countryValue,
                                city: currentUserDocument?.city,
                                isMale: maleValue,
                                isFemale: femaleValue,
                              );
                              await currentUserReference
                                  .update(usersUpdateData);
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.leftToRight,
                                  duration: Duration(milliseconds: 200),
                                  reverseDuration: Duration(milliseconds: 200),
                                  child: PhotosWidget(),
                                ),
                              );
                            },
                            text: FFLocalizations.of(context).getText(
                              'hwte74bp' /* Continuer */,
                            ),
                            options: FFButtonOptions(
                              width: 200,
                              height: 50,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Avenir Light ',
                                    color: FlutterFlowTheme.of(context)
                                        .customColor7,
                                    fontWeight: FontWeight.bold,
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
          ],
        ),
      ),
    );
  }
}
