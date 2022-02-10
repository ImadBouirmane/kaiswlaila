import '../all_chat_page/all_chat_page_widget.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/navbar_widget.dart';
import '../edit_profile/edit_profile_widget.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../profile/profile_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key key}) : super(key: key);

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  String genderValue;
  double ageChoiceValue;
  bool newMatchesValue;
  bool newLikesValue;
  bool newMessagesValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
          padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: FlutterFlowTheme.primaryColor,
                          ),
                        ),
                        child: AuthUserStreamWidget(
                          child: Container(
                            width: 50,
                            height: 50,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: CachedNetworkImage(
                              imageUrl: currentUserPhoto,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'xh8l8uom' /* Paramètres */,
                      ),
                      style: FlutterFlowTheme.title1.override(
                        fontFamily: 'Avenir Light ',
                        color: FlutterFlowTheme.customColor4,
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
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
                            child: AllChatPageWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/Asset_13@4x.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 30, 10, 10),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: FlutterFlowTheme.customColor9,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
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
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'mvdu5xao' /* Je recherche: */,
                                      ),
                                      style:
                                          FlutterFlowTheme.subtitle1.override(
                                        fontFamily: 'Avenir Light ',
                                        color: FlutterFlowTheme.primaryColor,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AuthUserStreamWidget(
                                      child: FlutterFlowRadioButton(
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'lmv5diaj' /* Masculin */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'aj7epfo8' /* Feminin */,
                                          )
                                        ],
                                        onChanged: (value) {
                                          setState(() => genderValue = value);
                                        },
                                        optionHeight: 35,
                                        textStyle:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Avenir Light ',
                                          color: Colors.black,
                                          useGoogleFonts: false,
                                        ),
                                        textPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 50, 0),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.horizontal,
                                        radioButtonColor:
                                            FlutterFlowTheme.primaryColor,
                                        inactiveRadioButtonColor:
                                            Color(0x8A000000),
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'zhp5oi6b' /* Âge Preference */,
                                      ),
                                      style:
                                          FlutterFlowTheme.subtitle2.override(
                                        fontFamily: 'Avenir Light ',
                                        color: FlutterFlowTheme.customColor5,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                                child: AuthUserStreamWidget(
                                  child: SliderTheme(
                                    data: SliderThemeData(
                                      showValueIndicator:
                                          ShowValueIndicator.always,
                                    ),
                                    child: Slider.adaptive(
                                      activeColor:
                                          FlutterFlowTheme.primaryColor,
                                      inactiveColor: Color(0xFF9E9E9E),
                                      min: 0,
                                      max: 10,
                                      value: ageChoiceValue ??=
                                          currentUserDocument?.ageChoice,
                                      label: ageChoiceValue.toString(),
                                      onChanged: (newValue) {
                                        setState(
                                            () => ageChoiceValue = newValue);
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'dbjee32m' /* Location */,
                                      ),
                                      style:
                                          FlutterFlowTheme.subtitle2.override(
                                        fontFamily: 'Avenir Light ',
                                        color: FlutterFlowTheme.customColor5,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 100),
                                        reverseDuration:
                                            Duration(milliseconds: 100),
                                        child: EditProfileWidget(),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      AuthUserStreamWidget(
                                        child: Text(
                                          '${currentUserDocument?.city}, ${currentUserDocument?.country}',
                                          style: FlutterFlowTheme.subtitle1
                                              .override(
                                            fontFamily: 'Avenir Light ',
                                            fontSize: 16,
                                            useGoogleFonts: false,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.chevron_right,
                                        color: FlutterFlowTheme.primaryColor,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'yyfgvofr' /* Régler */,
                                      ),
                                      style:
                                          FlutterFlowTheme.subtitle1.override(
                                        fontFamily: 'Avenir Light ',
                                        color: FlutterFlowTheme.primaryColor,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'dhzpkhfp' /* Notifications */,
                                      ),
                                      style:
                                          FlutterFlowTheme.subtitle2.override(
                                        fontFamily: 'Avenir Light ',
                                        color: FlutterFlowTheme.customColor5,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child: FutureBuilder<List<NotificationsRecord>>(
                                  future: queryNotificationsRecordOnce(
                                    queryBuilder: (notificationsRecord) =>
                                        notificationsRecord.where('user',
                                            isEqualTo: currentUserReference),
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
                                            color:
                                                FlutterFlowTheme.primaryColor,
                                            size: 30,
                                          ),
                                        ),
                                      );
                                    }
                                    List<NotificationsRecord>
                                        newMatchesNotificationsRecordList =
                                        snapshot.data;
                                    // Return an empty Container when the document does not exist.
                                    if (snapshot.data.isEmpty) {
                                      return Container();
                                    }
                                    final newMatchesNotificationsRecord =
                                        newMatchesNotificationsRecordList
                                                .isNotEmpty
                                            ? newMatchesNotificationsRecordList
                                                .first
                                            : null;
                                    return SwitchListTile.adaptive(
                                      value: newMatchesValue ??=
                                          !(newMatchesNotificationsRecord
                                              .newMatches),
                                      onChanged: (newValue) => setState(
                                          () => newMatchesValue = newValue),
                                      title: Text(
                                        FFLocalizations.of(context).getText(
                                          '7ns2usao' /* Nouveaux matchs */,
                                        ),
                                        style: FlutterFlowTheme.bodyText1,
                                      ),
                                      activeColor:
                                          FlutterFlowTheme.primaryColor,
                                      activeTrackColor:
                                          FlutterFlowTheme.primaryColor,
                                      dense: true,
                                      controlAffinity:
                                          ListTileControlAffinity.trailing,
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child: FutureBuilder<List<NotificationsRecord>>(
                                  future: queryNotificationsRecordOnce(
                                    queryBuilder: (notificationsRecord) =>
                                        notificationsRecord.where('user',
                                            isEqualTo: currentUserReference),
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
                                            color:
                                                FlutterFlowTheme.primaryColor,
                                            size: 30,
                                          ),
                                        ),
                                      );
                                    }
                                    List<NotificationsRecord>
                                        newLikesNotificationsRecordList =
                                        snapshot.data;
                                    // Return an empty Container when the document does not exist.
                                    if (snapshot.data.isEmpty) {
                                      return Container();
                                    }
                                    final newLikesNotificationsRecord =
                                        newLikesNotificationsRecordList
                                                .isNotEmpty
                                            ? newLikesNotificationsRecordList
                                                .first
                                            : null;
                                    return SwitchListTile.adaptive(
                                      value: newLikesValue ??=
                                          newLikesNotificationsRecord.newLikes,
                                      onChanged: (newValue) => setState(
                                          () => newLikesValue = newValue),
                                      title: Text(
                                        FFLocalizations.of(context).getText(
                                          'k8jdlibi' /* Nouveaux J'aime */,
                                        ),
                                        style: FlutterFlowTheme.bodyText1,
                                      ),
                                      activeColor:
                                          FlutterFlowTheme.primaryColor,
                                      activeTrackColor:
                                          FlutterFlowTheme.primaryColor,
                                      dense: true,
                                      controlAffinity:
                                          ListTileControlAffinity.trailing,
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child: FutureBuilder<List<NotificationsRecord>>(
                                  future: queryNotificationsRecordOnce(
                                    queryBuilder: (notificationsRecord) =>
                                        notificationsRecord.where('user',
                                            isEqualTo: currentUserReference),
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
                                            color:
                                                FlutterFlowTheme.primaryColor,
                                            size: 30,
                                          ),
                                        ),
                                      );
                                    }
                                    List<NotificationsRecord>
                                        newMessagesNotificationsRecordList =
                                        snapshot.data;
                                    // Return an empty Container when the document does not exist.
                                    if (snapshot.data.isEmpty) {
                                      return Container();
                                    }
                                    final newMessagesNotificationsRecord =
                                        newMessagesNotificationsRecordList
                                                .isNotEmpty
                                            ? newMessagesNotificationsRecordList
                                                .first
                                            : null;
                                    return SwitchListTile.adaptive(
                                      value: newMessagesValue ??=
                                          newMessagesNotificationsRecord
                                              .newMessages,
                                      onChanged: (newValue) => setState(
                                          () => newMessagesValue = newValue),
                                      title: Text(
                                        FFLocalizations.of(context).getText(
                                          'b08p41hz' /* Nouveaux messages */,
                                        ),
                                        style: FlutterFlowTheme.bodyText1,
                                      ),
                                      activeColor:
                                          FlutterFlowTheme.primaryColor,
                                      activeTrackColor:
                                          FlutterFlowTheme.primaryColor,
                                      dense: true,
                                      controlAffinity:
                                          ListTileControlAffinity.trailing,
                                    );
                                  },
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
              Spacer(),
              NavbarWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
