import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/back3_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../select_location/select_location_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class GenderChoiceWidget extends StatefulWidget {
  const GenderChoiceWidget({Key key}) : super(key: key);

  @override
  _GenderChoiceWidgetState createState() => _GenderChoiceWidgetState();
}

class _GenderChoiceWidgetState extends State<GenderChoiceWidget> {
  bool forFemaleValue;
  bool forMaleValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'genderChoice'});
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<UsersRecord>>(
      future: queryUsersRecordOnce(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 30,
              height: 30,
              child: SpinKitFadingCircle(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 30,
              ),
            ),
          );
        }
        List<UsersRecord> genderChoiceUsersRecordList = snapshot.data;
        final genderChoiceUsersRecord = genderChoiceUsersRecordList.isNotEmpty
            ? genderChoiceUsersRecordList.first
            : null;
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
                Back3Widget(),
                Align(
                  alignment: AlignmentDirectional(0, 17.52),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
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
                                color:
                                    FlutterFlowTheme.of(context).customColor10,
                                size: 30,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'GENDER_CHOICE_chevron_left_outlined_ICN_');
                                logFirebaseEvent('IconButton_Navigate-Back');
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 30, 20, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '3nwj6z0s' /* Que cherchez-vous? */,
                                ),
                                style: FlutterFlowTheme.of(context).title1,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AutoSizeText(
                                FFLocalizations.of(context).getText(
                                  'ofrd39d8' /* Connectez-vous et socialisez a... */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(30, 50, 30, 0),
                            child: Wrap(
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 20),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                      ),
                                      unselectedWidgetColor: Color(0xFF707070),
                                    ),
                                    child: CheckboxListTile(
                                      value: forMaleValue ??= false,
                                      onChanged: (newValue) => setState(
                                          () => forMaleValue = newValue),
                                      title: Text(
                                        FFLocalizations.of(context).getText(
                                          'ilmhyb2n' /* Homme */,
                                        ),
                                        style:
                                            FlutterFlowTheme.of(context).title3,
                                      ),
                                      activeColor: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      checkColor: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      dense: false,
                                      controlAffinity:
                                          ListTileControlAffinity.trailing,
                                    ),
                                  ),
                                ),
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                    unselectedWidgetColor: Color(0xFF707070),
                                  ),
                                  child: CheckboxListTile(
                                    value: forFemaleValue ??= false,
                                    onChanged: (newValue) => setState(
                                        () => forFemaleValue = newValue),
                                    title: Text(
                                      FFLocalizations.of(context).getText(
                                        'e03jhr7h' /* Féminin */,
                                      ),
                                      style:
                                          FlutterFlowTheme.of(context).title3,
                                    ),
                                    activeColor: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                    checkColor: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0, 1),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'GENDER_CHOICE_PAGE_step4_ON_TAP');
                                      logFirebaseEvent('step4_Backend-Call');

                                      final usersUpdateData = {
                                        ...createUsersRecordData(
                                          forMale: (forMaleValue) !=
                                              (genderChoiceUsersRecord.forMale),
                                          forFemale: (forFemaleValue) ==
                                              (genderChoiceUsersRecord.forMale),
                                        ),
                                        'users': FieldValue.arrayUnion(
                                            [currentUserReference]),
                                      };
                                      await currentUserReference
                                          .update(usersUpdateData);
                                      logFirebaseEvent('step4_Navigate-To');
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                          reverseDuration:
                                              Duration(milliseconds: 0),
                                          child: SelectLocationWidget(),
                                        ),
                                      );
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'y8imvytw' /* Continuer
 */
                                      ,
                                    ),
                                    options: FFButtonOptions(
                                      width: 200,
                                      height: 50,
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
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
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
