import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/back1_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../select_location/select_location_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AgeChoicePageWidget extends StatefulWidget {
  const AgeChoicePageWidget({Key key}) : super(key: key);

  @override
  _AgeChoicePageWidgetState createState() => _AgeChoicePageWidgetState();
}

class _AgeChoicePageWidgetState extends State<AgeChoicePageWidget> {
  double ageChoiceValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.none,
          image: Image.asset(
            'assets/images/Asset_3@4x.png',
          ).image,
        ),
      ),
      child: Stack(
        children: [
          Back1Widget(),
          Padding(
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
                        Icons.chevron_left_outlined,
                        color: FlutterFlowTheme.of(context).customColor10,
                        size: 30,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'AGE_CHOICE_chevron_left_outlined_ICN_ON_');
                        logFirebaseEvent('IconButton_Navigate-Back');
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0, 1),
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
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                '4vk6npjo' /* Quelle tranche d’âge
 recherch... */
                                ,
                              ),
                              textAlign: TextAlign.center,
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Avenir Light ',
                                        color: FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                        fontSize: 20,
                                        useGoogleFonts: false,
                                      ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 30),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '1htmgfon' /* Glissez le slider ci-dessous: */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Avenir Light ',
                                      fontSize: 16,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
                          child: AuthUserStreamWidget(
                            child: Slider.adaptive(
                              activeColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                              inactiveColor: Color(0xFF9E9E9E),
                              min: 18,
                              max: 40,
                              value: ageChoiceValue ??= valueOrDefault(
                                  currentUserDocument?.ageChoice, 0.0),
                              label: ageChoiceValue.toString(),
                              divisions: 11,
                              onChanged: (newValue) {
                                setState(() => ageChoiceValue = newValue);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0, 1),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'AGE_CHOICE_PAGE_COMP_step2_ON_TAP');
                              logFirebaseEvent('step2_Backend-Call');

                              final usersUpdateData = createUsersRecordData(
                                ageChoice: ageChoiceValue,
                              );
                              await currentUserReference
                                  .update(usersUpdateData);
                              logFirebaseEvent('step2_Navigate-To');
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.leftToRight,
                                  duration: Duration(milliseconds: 200),
                                  reverseDuration: Duration(milliseconds: 200),
                                  child: SelectLocationWidget(),
                                ),
                              );
                            },
                            text: FFLocalizations.of(context).getText(
                              '8d7vzcfe' /* Continuer */,
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
