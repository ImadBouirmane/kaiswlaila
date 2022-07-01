import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../profile/profile_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class EditProfileWidget extends StatefulWidget {
  const EditProfileWidget({Key key}) : super(key: key);

  @override
  _EditProfileWidgetState createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
  String uploadedFileUrl1 = '';
  TextEditingController nomCompletController;
  TextEditingController jobTitleController;
  TextEditingController bioController;
  bool femaleValue;
  bool maleValue;
  TextEditingController dayController;
  TextEditingController monthController;
  TextEditingController yearController;
  TextEditingController textController7;
  String countryValue;
  String uploadedFileUrl2 = '';
  String uploadedFileUrl3 = '';
  String uploadedFileUrl4 = '';
  String uploadedFileUrl5 = '';
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'editProfile'});
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<UsersRecord>(
      future: UsersRecord.getDocumentOnce(currentUserReference),
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
        final editProfileUsersRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.none,
                image: Image.asset(
                  'assets/images/Asset_4@4x.png',
                ).image,
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 40),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 60,
                              icon: Icon(
                                Icons.chevron_left,
                                color:
                                    FlutterFlowTheme.of(context).customColor10,
                                size: 30,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'EDIT_PROFILE_chevron_left_ICN_ON_TAP');
                                logFirebaseEvent('IconButton_Navigate-To');
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                    reverseDuration: Duration(milliseconds: 0),
                                    child: ProfileWidget(),
                                  ),
                                );
                              },
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(-0.5, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'l3uatqmy' /* Éditez votre profil */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Avenir Light ',
                                      fontSize: 22,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Stack(
                          alignment:
                              AlignmentDirectional(0.30000000000000004, -1),
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 5,
                                  shape: const CircleBorder(),
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'EDIT_PROFILE_CircleImage_hdh8zu42_ON_TAP');
                                        logFirebaseEvent(
                                            'CircleImage_Expand-Image');
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            child: FlutterFlowExpandedImageView(
                                              image: CachedNetworkImage(
                                                imageUrl: editProfileUsersRecord
                                                    .photoUrl,
                                                fit: BoxFit.contain,
                                              ),
                                              allowRotation: false,
                                              tag: editProfileUsersRecord
                                                  .photoUrl,
                                              useHeroAnimation: true,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Hero(
                                        tag: editProfileUsersRecord.photoUrl,
                                        transitionOnUserGestures: true,
                                        child: Container(
                                          width: 120,
                                          height: 120,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                editProfileUsersRecord.photoUrl,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                logFirebaseEvent(
                                    'EDIT_PROFILE_Container_e19k2pyb_ON_TAP');
                                logFirebaseEvent(
                                    'Container_Upload-Photo-Video');
                                final selectedMedia =
                                    await selectMediaWithSourceBottomSheet(
                                  context: context,
                                  allowPhoto: true,
                                  textColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  pickerFontFamily: 'Lato',
                                );
                                if (selectedMedia != null &&
                                    selectedMedia.every((m) =>
                                        validateFileFormat(
                                            m.storagePath, context))) {
                                  showUploadMessage(
                                    context,
                                    FFLocalizations.of(context).getText(
                                      'vrwld95g' /* Téléchargement du fichier... */,
                                    ),
                                    showLoading: true,
                                  );
                                  final downloadUrls = (await Future.wait(
                                          selectedMedia.map((m) async =>
                                              await uploadData(
                                                  m.storagePath, m.bytes))))
                                      .where((u) => u != null)
                                      .toList();
                                  ScaffoldMessenger.of(context)
                                      .hideCurrentSnackBar();
                                  if (downloadUrls != null &&
                                      downloadUrls.length ==
                                          selectedMedia.length) {
                                    setState(() =>
                                        uploadedFileUrl1 = downloadUrls.first);
                                    showUploadMessage(
                                      context,
                                      FFLocalizations.of(context).getText(
                                        '2x0ests4' /* Succès! */,
                                      ),
                                    );
                                  } else {
                                    showUploadMessage(
                                      context,
                                      FFLocalizations.of(context).getText(
                                        'ejhzf9lt' /* Échec du téléchargement du méd... */,
                                      ),
                                    );
                                    return;
                                  }
                                }
                              },
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0x5AFFFFFF),
                                  shape: BoxShape.circle,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.edit_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 30,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 50, 20, 30),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              '2efprkqz' /* Mon Profil: */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .subtitle1
                                .override(
                                  fontFamily: 'Avenir Light ',
                                  color:
                                      FlutterFlowTheme.of(context).customColor4,
                                  fontSize: 20,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
                      child: TextFormField(
                        controller: nomCompletController ??=
                            TextEditingController(
                          text: editProfileUsersRecord.displayName,
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: FFLocalizations.of(context).getText(
                            't9i89j5t' /* Nom Complet */,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.of(context).customColor9,
                        ),
                        style: FlutterFlowTheme.of(context).subtitle1.override(
                              fontFamily: 'Avenir Light ',
                              color: FlutterFlowTheme.of(context).customColor5,
                              fontSize: 18,
                              useGoogleFonts: false,
                            ),
                        keyboardType: TextInputType.visiblePassword,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
                      child: TextFormField(
                        controller: jobTitleController ??=
                            TextEditingController(
                          text: editProfileUsersRecord.function,
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: FFLocalizations.of(context).getText(
                            'boqifj1x' /* Métier */,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.of(context).customColor9,
                        ),
                        style: FlutterFlowTheme.of(context).subtitle1.override(
                              fontFamily: 'Avenir Light ',
                              color: FlutterFlowTheme.of(context).customColor5,
                              fontSize: 16,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: TextFormField(
                        controller: bioController ??= TextEditingController(
                          text: editProfileUsersRecord.bio,
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: FFLocalizations.of(context).getText(
                            'wd9vpqh6' /* Biographie */,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.of(context).customColor9,
                        ),
                        style: FlutterFlowTheme.of(context).subtitle1.override(
                              fontFamily: 'Avenir Light ',
                              color: FlutterFlowTheme.of(context).customColor5,
                              fontSize: 16,
                              useGoogleFonts: false,
                            ),
                        maxLines: 5,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 30, 30, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'foi3lff4' /* Sexe: */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .subtitle1
                                .override(
                                  fontFamily: 'Avenir Light ',
                                  color:
                                      FlutterFlowTheme.of(context).customColor4,
                                  fontSize: 20,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: AuthUserStreamWidget(
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
                                  value: maleValue ??= valueOrDefault(
                                      currentUserDocument?.isMale, false),
                                  onChanged: (newValue) =>
                                      setState(() => maleValue = newValue),
                                  title: Text(
                                    FFLocalizations.of(context).getText(
                                      'jt3a1h20' /* Homme */,
                                    ),
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                  activeColor: FlutterFlowTheme.of(context)
                                      .tertiaryColor,
                                  checkColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: AuthUserStreamWidget(
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
                                  value: femaleValue ??= valueOrDefault(
                                      currentUserDocument?.isFemale, false),
                                  onChanged: (newValue) =>
                                      setState(() => femaleValue = newValue),
                                  title: Text(
                                    FFLocalizations.of(context).getText(
                                      'kqkhgv5o' /* Féminin */,
                                    ),
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                  activeColor: FlutterFlowTheme.of(context)
                                      .tertiaryColor,
                                  checkColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              '5bponwwp' /* Date de naissance: */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .subtitle1
                                .override(
                                  fontFamily: 'Avenir Light ',
                                  color:
                                      FlutterFlowTheme.of(context).customColor4,
                                  fontSize: 20,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                              child: TextFormField(
                                controller: dayController ??=
                                    TextEditingController(
                                  text: editProfileUsersRecord.day,
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'jgqgzegq' /* Jour */,
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
                                controller: monthController ??=
                                    TextEditingController(
                                  text: editProfileUsersRecord.month,
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'p5jfzspu' /* Mois */,
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
                              controller: yearController ??=
                                  TextEditingController(
                                text: editProfileUsersRecord.year,
                              ),
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'frvjzbxi' /* Année */,
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
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 30),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'ca4lzles' /* Sélectionnez  votre ville: */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .subtitle1
                                .override(
                                  fontFamily: 'Avenir Light ',
                                  color:
                                      FlutterFlowTheme.of(context).customColor4,
                                  fontSize: 20,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: TextFormField(
                          controller: textController7 ??= TextEditingController(
                            text: editProfileUsersRecord.city,
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'h0ueu5id' /* Ville */,
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
                              .bodyText1
                              .override(
                                fontFamily: 'Avenir Light ',
                                color:
                                    FlutterFlowTheme.of(context).customColor5,
                                fontSize: 18,
                                useGoogleFonts: false,
                              ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              '0jbfg6p4' /* Sélectionnez votre pays: */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .subtitle1
                                .override(
                                  fontFamily: 'Avenir Light ',
                                  color:
                                      FlutterFlowTheme.of(context).customColor4,
                                  fontSize: 20,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                      child: FlutterFlowDropDown(
                        initialOption: countryValue ??=
                            editProfileUsersRecord.country,
                        options: [
                          FFLocalizations.of(context).getText(
                            'wod7xith' /* Maroc */,
                          ),
                          FFLocalizations.of(context).getText(
                            '11d1afgd' /* Algérie */,
                          ),
                          FFLocalizations.of(context).getText(
                            '1cu9v3bt' /* Tunisie */,
                          ),
                          FFLocalizations.of(context).getText(
                            '9igd712z' /* Libye */,
                          ),
                          FFLocalizations.of(context).getText(
                            'a4vsnbxb' /* Mauritanie */,
                          ),
                          FFLocalizations.of(context).getText(
                            'h3hponew' /* Egypte */,
                          ),
                          FFLocalizations.of(context).getText(
                            'aj862mpk' /* Saudi Arabia */,
                          ),
                          FFLocalizations.of(context).getText(
                            'kc0kivbo' /* UAE */,
                          ),
                          FFLocalizations.of(context).getText(
                            'ep6joodu' /* Oman */,
                          ),
                          FFLocalizations.of(context).getText(
                            '6vdqvewf' /* Qatar */,
                          ),
                          FFLocalizations.of(context).getText(
                            'oes0h3he' /* Bahrain */,
                          ),
                          FFLocalizations.of(context).getText(
                            'uwb8cyq1' /* Kuwait */,
                          ),
                          FFLocalizations.of(context).getText(
                            '8dzu8lug' /* Soudan */,
                          ),
                          FFLocalizations.of(context).getText(
                            'uzivxrgd' /* Syrie */,
                          ),
                          FFLocalizations.of(context).getText(
                            'cnljsu8m' /* Liban */,
                          ),
                          FFLocalizations.of(context).getText(
                            'd9zueiyc' /* Turquie */,
                          )
                        ],
                        onChanged: (val) => setState(() => countryValue = val),
                        width: double.infinity,
                        height: 50,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyText1
                            .override(
                              fontFamily: 'Avenir Light ',
                              color: FlutterFlowTheme.of(context).customColor5,
                              fontSize: 18,
                              useGoogleFonts: false,
                            ),
                        hintText: FFLocalizations.of(context).getText(
                          '0kai99ke' /* Pays */,
                        ),
                        fillColor: FlutterFlowTheme.of(context).tertiaryColor,
                        elevation: 2,
                        borderColor: FlutterFlowTheme.of(context).primaryColor,
                        borderWidth: 0,
                        borderRadius: 20,
                        margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                        hidesUnderline: true,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 30),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              '51j0jlpg' /* Photos: */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .subtitle1
                                .override(
                                  fontFamily: 'Avenir Light ',
                                  color:
                                      FlutterFlowTheme.of(context).customColor4,
                                  fontSize: 20,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              decoration: BoxDecoration(),
                              child: Stack(
                                alignment: AlignmentDirectional(1, -1),
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 10, 10),
                                    child: AuthUserStreamWidget(
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 5,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Container(
                                          width: 200,
                                          height: 250,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: CachedNetworkImageProvider(
                                                valueOrDefault(
                                                    currentUserDocument?.photo1,
                                                    ''),
                                              ),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            child: CachedNetworkImage(
                                              imageUrl:
                                                  editProfileUsersRecord.photo1,
                                              width: 200,
                                              height: 250,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'EDIT_PROFILE_Container_ywhmbknt_ON_TAP');
                                      logFirebaseEvent(
                                          'Container_Upload-Photo-Video');
                                      final selectedMedia =
                                          await selectMediaWithSourceBottomSheet(
                                        context: context,
                                        allowPhoto: true,
                                        textColor: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        pickerFontFamily: 'Lato',
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        showUploadMessage(
                                          context,
                                          FFLocalizations.of(context).getText(
                                            'vrwld95g' /* Téléchargement du fichier... */,
                                          ),
                                          showLoading: true,
                                        );
                                        final downloadUrls = (await Future.wait(
                                                selectedMedia.map((m) async =>
                                                    await uploadData(
                                                        m.storagePath,
                                                        m.bytes))))
                                            .where((u) => u != null)
                                            .toList();
                                        ScaffoldMessenger.of(context)
                                            .hideCurrentSnackBar();
                                        if (downloadUrls != null &&
                                            downloadUrls.length ==
                                                selectedMedia.length) {
                                          setState(() => uploadedFileUrl2 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                            context,
                                            FFLocalizations.of(context).getText(
                                              '2x0ests4' /* Succès! */,
                                            ),
                                          );
                                        } else {
                                          showUploadMessage(
                                            context,
                                            FFLocalizations.of(context).getText(
                                              'ejhzf9lt' /* Échec du téléchargement du méd... */,
                                            ),
                                          );
                                          return;
                                        }
                                      }
                                    },
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Color(0xAAFDB0BB),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.edit_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(),
                              child: Stack(
                                alignment: AlignmentDirectional(1, -1),
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 10),
                                      child: AuthUserStreamWidget(
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 5,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Container(
                                            width: 200,
                                            height: 250,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image:
                                                    CachedNetworkImageProvider(
                                                  valueOrDefault(
                                                      currentUserDocument
                                                          ?.photo2,
                                                      ''),
                                                ),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              child: CachedNetworkImage(
                                                imageUrl: editProfileUsersRecord
                                                    .photo2,
                                                width: 200,
                                                height: 250,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'EDIT_PROFILE_Container_26egxctk_ON_TAP');
                                      logFirebaseEvent(
                                          'Container_Upload-Photo-Video');
                                      final selectedMedia =
                                          await selectMediaWithSourceBottomSheet(
                                        context: context,
                                        allowPhoto: true,
                                        textColor: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        pickerFontFamily: 'Lato',
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        showUploadMessage(
                                          context,
                                          FFLocalizations.of(context).getText(
                                            'vrwld95g' /* Téléchargement du fichier... */,
                                          ),
                                          showLoading: true,
                                        );
                                        final downloadUrls = (await Future.wait(
                                                selectedMedia.map((m) async =>
                                                    await uploadData(
                                                        m.storagePath,
                                                        m.bytes))))
                                            .where((u) => u != null)
                                            .toList();
                                        ScaffoldMessenger.of(context)
                                            .hideCurrentSnackBar();
                                        if (downloadUrls != null &&
                                            downloadUrls.length ==
                                                selectedMedia.length) {
                                          setState(() => uploadedFileUrl3 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                            context,
                                            FFLocalizations.of(context).getText(
                                              '2x0ests4' /* Succès! */,
                                            ),
                                          );
                                        } else {
                                          showUploadMessage(
                                            context,
                                            FFLocalizations.of(context).getText(
                                              'ejhzf9lt' /* Échec du téléchargement du méd... */,
                                            ),
                                          );
                                          return;
                                        }
                                      }
                                    },
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Color(0xAAFDB0BB),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.edit_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(),
                              child: Stack(
                                alignment: AlignmentDirectional(1, -1),
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 10),
                                      child: AuthUserStreamWidget(
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 5,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Container(
                                            width: 200,
                                            height: 250,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image:
                                                    CachedNetworkImageProvider(
                                                  valueOrDefault(
                                                      currentUserDocument
                                                          ?.photo3,
                                                      ''),
                                                ),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              child: CachedNetworkImage(
                                                imageUrl: editProfileUsersRecord
                                                    .photo3,
                                                width: 200,
                                                height: 250,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'EDIT_PROFILE_Container_3atb7i9t_ON_TAP');
                                      logFirebaseEvent(
                                          'Container_Upload-Photo-Video');
                                      final selectedMedia =
                                          await selectMediaWithSourceBottomSheet(
                                        context: context,
                                        allowPhoto: true,
                                        textColor: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        pickerFontFamily: 'Lato',
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        showUploadMessage(
                                          context,
                                          FFLocalizations.of(context).getText(
                                            'vrwld95g' /* Téléchargement du fichier... */,
                                          ),
                                          showLoading: true,
                                        );
                                        final downloadUrls = (await Future.wait(
                                                selectedMedia.map((m) async =>
                                                    await uploadData(
                                                        m.storagePath,
                                                        m.bytes))))
                                            .where((u) => u != null)
                                            .toList();
                                        ScaffoldMessenger.of(context)
                                            .hideCurrentSnackBar();
                                        if (downloadUrls != null &&
                                            downloadUrls.length ==
                                                selectedMedia.length) {
                                          setState(() => uploadedFileUrl4 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                            context,
                                            FFLocalizations.of(context).getText(
                                              '2x0ests4' /* Succès! */,
                                            ),
                                          );
                                        } else {
                                          showUploadMessage(
                                            context,
                                            FFLocalizations.of(context).getText(
                                              'ejhzf9lt' /* Échec du téléchargement du méd... */,
                                            ),
                                          );
                                          return;
                                        }
                                      }
                                    },
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Color(0xAAFDB0BB),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.edit_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(),
                              child: Stack(
                                alignment: AlignmentDirectional(1, -1),
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 10),
                                      child: AuthUserStreamWidget(
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 5,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Container(
                                            width: 200,
                                            height: 250,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image:
                                                    CachedNetworkImageProvider(
                                                  valueOrDefault(
                                                      currentUserDocument
                                                          ?.photo2,
                                                      ''),
                                                ),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              child: CachedNetworkImage(
                                                imageUrl: editProfileUsersRecord
                                                    .photo4,
                                                width: 200,
                                                height: 250,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'EDIT_PROFILE_Container_4mbipeiz_ON_TAP');
                                      logFirebaseEvent(
                                          'Container_Upload-Photo-Video');
                                      final selectedMedia =
                                          await selectMediaWithSourceBottomSheet(
                                        context: context,
                                        allowPhoto: true,
                                        textColor: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        pickerFontFamily: 'Lato',
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        showUploadMessage(
                                          context,
                                          FFLocalizations.of(context).getText(
                                            'vrwld95g' /* Téléchargement du fichier... */,
                                          ),
                                          showLoading: true,
                                        );
                                        final downloadUrls = (await Future.wait(
                                                selectedMedia.map((m) async =>
                                                    await uploadData(
                                                        m.storagePath,
                                                        m.bytes))))
                                            .where((u) => u != null)
                                            .toList();
                                        ScaffoldMessenger.of(context)
                                            .hideCurrentSnackBar();
                                        if (downloadUrls != null &&
                                            downloadUrls.length ==
                                                selectedMedia.length) {
                                          setState(() => uploadedFileUrl5 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                            context,
                                            FFLocalizations.of(context).getText(
                                              '2x0ests4' /* Succès! */,
                                            ),
                                          );
                                        } else {
                                          showUploadMessage(
                                            context,
                                            FFLocalizations.of(context).getText(
                                              'ejhzf9lt' /* Échec du téléchargement du méd... */,
                                            ),
                                          );
                                          return;
                                        }
                                      }
                                    },
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Color(0xAAFDB0BB),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.edit_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                            size: 30,
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
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'EDIT_PROFILE_PAGE_step1_ON_TAP');
                                logFirebaseEvent('step1_Backend-Call');

                                final usersUpdateData = createUsersRecordData(
                                  photoUrl: uploadedFileUrl1,
                                  displayName: nomCompletController?.text ?? '',
                                  function: jobTitleController?.text ?? '',
                                  bio: bioController?.text ?? '',
                                  day: dayController?.text ?? '',
                                  month: monthController?.text ?? '',
                                  year: yearController?.text ?? '',
                                  city: textController7?.text ?? '',
                                  country: countryValue,
                                  photo1: uploadedFileUrl2,
                                  photo2: uploadedFileUrl3,
                                  photo3: uploadedFileUrl4,
                                  photo4: uploadedFileUrl5,
                                  isMale: maleValue,
                                  isFemale: femaleValue,
                                );
                                await currentUserReference
                                    .update(usersUpdateData);
                                logFirebaseEvent('step1_Navigate-To');
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                    reverseDuration: Duration(milliseconds: 0),
                                    child: ProfileWidget(),
                                  ),
                                );
                              },
                              text: FFLocalizations.of(context).getText(
                                'nncrdp48' /* Enregistrer */,
                              ),
                              options: FFButtonOptions(
                                width: 200,
                                height: 50,
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
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
                                  color:
                                      FlutterFlowTheme.of(context).customColor6,
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
            ),
          ),
        );
      },
    );
  }
}
