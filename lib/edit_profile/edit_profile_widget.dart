import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
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
  String countryValue;
  String genderValue;
  String uploadedFileUrl1 = '';
  TextEditingController nomCompletController;
  TextEditingController jobTitleController;
  TextEditingController bioController;
  TextEditingController dayController;
  TextEditingController monthController;
  TextEditingController yearController;
  TextEditingController textController7;
  String uploadedFileUrl2 = '';
  String uploadedFileUrl3 = '';
  String uploadedFileUrl4 = '';
  String uploadedFileUrl5 = '';
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    bioController = TextEditingController(text: currentUserDocument?.bio);
    jobTitleController =
        TextEditingController(text: currentUserDocument?.function);
    nomCompletController = TextEditingController(text: currentUserDisplayName);
    dayController = TextEditingController(text: currentUserDocument?.day);
    monthController = TextEditingController(text: currentUserDocument?.month);
    yearController = TextEditingController(text: currentUserDocument?.year);
    textController7 = TextEditingController(text: currentUserDocument?.city);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.tertiaryColor,
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
                            color: FlutterFlowTheme.primaryColor,
                            size: 30,
                          ),
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'l3uatqmy' /* ??ditez votre profile */,
                        ),
                        style: FlutterFlowTheme.title1.override(
                          fontFamily: 'Avenir Light ',
                          fontSize: 22,
                          useGoogleFonts: false,
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
                      alignment: AlignmentDirectional(0.30000000000000004, -1),
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
                                    color: FlutterFlowTheme.primaryColor,
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        child: FlutterFlowExpandedImageView(
                                          image: CachedNetworkImage(
                                            imageUrl: uploadedFileUrl1,
                                            fit: BoxFit.contain,
                                          ),
                                          allowRotation: false,
                                          tag: uploadedFileUrl1,
                                          useHeroAnimation: true,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Hero(
                                    tag: uploadedFileUrl1,
                                    transitionOnUserGestures: true,
                                    child: Container(
                                      width: 120,
                                      height: 120,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: CachedNetworkImage(
                                        imageUrl: uploadedFileUrl1,
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
                            final selectedMedia =
                                await selectMediaWithSourceBottomSheet(
                              context: context,
                              allowPhoto: true,
                              textColor: FlutterFlowTheme.primaryColor,
                              pickerFontFamily: 'Lato',
                            );
                            if (selectedMedia != null &&
                                validateFileFormat(
                                    selectedMedia.storagePath, context)) {
                              showUploadMessage(
                                context,
                                FFLocalizations.of(context).getText(
                                  'vrwld95g' /* T??l??chargement du fichier... */,
                                ),
                                showLoading: true,
                              );
                              final downloadUrl = await uploadData(
                                  selectedMedia.storagePath,
                                  selectedMedia.bytes);
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                              if (downloadUrl != null) {
                                setState(() => uploadedFileUrl1 = downloadUrl);
                                showUploadMessage(
                                  context,
                                  FFLocalizations.of(context).getText(
                                    '2x0ests4' /* Succ??s! */,
                                  ),
                                );
                              } else {
                                showUploadMessage(
                                  context,
                                  FFLocalizations.of(context).getText(
                                    'ejhzf9lt' /* ??chec du t??l??chargement du m??d... */,
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
                              color: Color(0x3FFF97C0),
                              shape: BoxShape.circle,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.edit_outlined,
                                  color: FlutterFlowTheme.primaryColor,
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
                          '2efprkqz' /* Base */,
                        ),
                        style: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Avenir Light ',
                          color: FlutterFlowTheme.customColor4,
                          fontSize: 20,
                          useGoogleFonts: false,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
                  child: AuthUserStreamWidget(
                    child: TextFormField(
                      controller: nomCompletController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: FFLocalizations.of(context).getText(
                          't9i89j5t' /* Nom Complet */,
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
                        fontSize: 18,
                        useGoogleFonts: false,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
                  child: AuthUserStreamWidget(
                    child: TextFormField(
                      controller: jobTitleController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: FFLocalizations.of(context).getText(
                          'boqifj1x' /* Fonction */,
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
                        filled: true,
                        fillColor: FlutterFlowTheme.customColor9,
                      ),
                      style: FlutterFlowTheme.subtitle1.override(
                        fontFamily: 'Avenir Light ',
                        color: FlutterFlowTheme.customColor5,
                        fontSize: 16,
                        useGoogleFonts: false,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: AuthUserStreamWidget(
                    child: TextFormField(
                      controller: bioController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: FFLocalizations.of(context).getText(
                          'wd9vpqh6' /* Bio */,
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
                        filled: true,
                        fillColor: FlutterFlowTheme.customColor9,
                      ),
                      style: FlutterFlowTheme.subtitle1.override(
                        fontFamily: 'Avenir Light ',
                        color: FlutterFlowTheme.customColor5,
                        fontSize: 16,
                        useGoogleFonts: false,
                      ),
                      maxLines: 5,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 30, 30, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'foi3lff4' /* Sexe */,
                        ),
                        style: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Avenir Light ',
                          color: FlutterFlowTheme.customColor4,
                          fontSize: 20,
                          useGoogleFonts: false,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: AuthUserStreamWidget(
                        child: FlutterFlowChoiceChips(
                          initialOption: genderValue ??=
                              currentUserDocument?.gender,
                          options: [
                            ChipData(FFLocalizations.of(context).getText(
                              'l6m6ng3p' /* Masculin */,
                            )),
                            ChipData(FFLocalizations.of(context).getText(
                              'baim5lij' /* Feminin */,
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
                          '5bponwwp' /* Date de naissance */,
                        ),
                        style: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Avenir Light ',
                          color: FlutterFlowTheme.customColor4,
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
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: AuthUserStreamWidget(
                            child: TextFormField(
                              controller: dayController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'jgqgzegq' /* Jour */,
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
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: AuthUserStreamWidget(
                            child: TextFormField(
                              controller: monthController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'p5jfzspu' /* Mois */,
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
                      ),
                      Expanded(
                        child: AuthUserStreamWidget(
                          child: TextFormField(
                            controller: yearController,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                'frvjzbxi' /* Ann??e */,
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
                          'ca4lzles' /* Votre Ville: */,
                        ),
                        style: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Avenir Light ',
                          color: FlutterFlowTheme.customColor4,
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
                    child: AuthUserStreamWidget(
                      child: TextFormField(
                        controller: textController7,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: FFLocalizations.of(context).getText(
                            'h0ueu5id' /* Ville */,
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
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          '0jbfg6p4' /* S??lectionnez votre pays: */,
                        ),
                        style: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Avenir Light ',
                          color: FlutterFlowTheme.customColor4,
                          fontSize: 20,
                          useGoogleFonts: false,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                  child: AuthUserStreamWidget(
                    child: FlutterFlowDropDown(
                      initialOption: countryValue ??=
                          currentUserDocument?.country,
                      options: [
                        FFLocalizations.of(context).getText(
                          'wod7xith' /* Maroc */,
                        ),
                        FFLocalizations.of(context).getText(
                          '11d1afgd' /* Alg??rie */,
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
                      ].toList(),
                      onChanged: (val) => setState(() => countryValue = val),
                      width: double.infinity,
                      height: 50,
                      textStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Avenir Light ',
                        color: FlutterFlowTheme.customColor5,
                        fontSize: 18,
                        useGoogleFonts: false,
                      ),
                      hintText: FFLocalizations.of(context).getText(
                        '0kai99ke' /* Pays */,
                      ),
                      fillColor: FlutterFlowTheme.customColor9,
                      elevation: 2,
                      borderColor: FlutterFlowTheme.primaryColor,
                      borderWidth: 0,
                      borderRadius: 20,
                      margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                      hidesUnderline: true,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 30),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          '51j0jlpg' /* Photos */,
                        ),
                        style: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Avenir Light ',
                          color: FlutterFlowTheme.customColor4,
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
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Container(
                                        width: 200,
                                        height: 250,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          child: CachedNetworkImage(
                                            imageUrl: uploadedFileUrl2,
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
                                  final selectedMedia =
                                      await selectMediaWithSourceBottomSheet(
                                    context: context,
                                    allowPhoto: true,
                                    textColor: FlutterFlowTheme.primaryColor,
                                    pickerFontFamily: 'Lato',
                                  );
                                  if (selectedMedia != null &&
                                      validateFileFormat(
                                          selectedMedia.storagePath, context)) {
                                    showUploadMessage(
                                      context,
                                      FFLocalizations.of(context).getText(
                                        'vrwld95g' /* T??l??chargement du fichier... */,
                                      ),
                                      showLoading: true,
                                    );
                                    final downloadUrl = await uploadData(
                                        selectedMedia.storagePath,
                                        selectedMedia.bytes);
                                    ScaffoldMessenger.of(context)
                                        .hideCurrentSnackBar();
                                    if (downloadUrl != null) {
                                      setState(
                                          () => uploadedFileUrl2 = downloadUrl);
                                      showUploadMessage(
                                        context,
                                        FFLocalizations.of(context).getText(
                                          '2x0ests4' /* Succ??s! */,
                                        ),
                                      );
                                    } else {
                                      showUploadMessage(
                                        context,
                                        FFLocalizations.of(context).getText(
                                          'ejhzf9lt' /* ??chec du t??l??chargement du m??d... */,
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
                                    color: FlutterFlowTheme.primaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.edit_outlined,
                                        color: FlutterFlowTheme.tertiaryColor,
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
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Container(
                                        width: 200,
                                        height: 250,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          child: CachedNetworkImage(
                                            imageUrl: uploadedFileUrl3,
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
                                  final selectedMedia =
                                      await selectMediaWithSourceBottomSheet(
                                    context: context,
                                    allowPhoto: true,
                                    textColor: FlutterFlowTheme.primaryColor,
                                    pickerFontFamily: 'Lato',
                                  );
                                  if (selectedMedia != null &&
                                      validateFileFormat(
                                          selectedMedia.storagePath, context)) {
                                    showUploadMessage(
                                      context,
                                      FFLocalizations.of(context).getText(
                                        'vrwld95g' /* T??l??chargement du fichier... */,
                                      ),
                                      showLoading: true,
                                    );
                                    final downloadUrl = await uploadData(
                                        selectedMedia.storagePath,
                                        selectedMedia.bytes);
                                    ScaffoldMessenger.of(context)
                                        .hideCurrentSnackBar();
                                    if (downloadUrl != null) {
                                      setState(
                                          () => uploadedFileUrl3 = downloadUrl);
                                      showUploadMessage(
                                        context,
                                        FFLocalizations.of(context).getText(
                                          '2x0ests4' /* Succ??s! */,
                                        ),
                                      );
                                    } else {
                                      showUploadMessage(
                                        context,
                                        FFLocalizations.of(context).getText(
                                          'ejhzf9lt' /* ??chec du t??l??chargement du m??d... */,
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
                                    color: FlutterFlowTheme.primaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.edit_outlined,
                                        color: FlutterFlowTheme.tertiaryColor,
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
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Container(
                                        width: 200,
                                        height: 250,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          child: CachedNetworkImage(
                                            imageUrl: uploadedFileUrl4,
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
                                  final selectedMedia =
                                      await selectMediaWithSourceBottomSheet(
                                    context: context,
                                    allowPhoto: true,
                                    textColor: FlutterFlowTheme.primaryColor,
                                    pickerFontFamily: 'Lato',
                                  );
                                  if (selectedMedia != null &&
                                      validateFileFormat(
                                          selectedMedia.storagePath, context)) {
                                    showUploadMessage(
                                      context,
                                      FFLocalizations.of(context).getText(
                                        'vrwld95g' /* T??l??chargement du fichier... */,
                                      ),
                                      showLoading: true,
                                    );
                                    final downloadUrl = await uploadData(
                                        selectedMedia.storagePath,
                                        selectedMedia.bytes);
                                    ScaffoldMessenger.of(context)
                                        .hideCurrentSnackBar();
                                    if (downloadUrl != null) {
                                      setState(
                                          () => uploadedFileUrl4 = downloadUrl);
                                      showUploadMessage(
                                        context,
                                        FFLocalizations.of(context).getText(
                                          '2x0ests4' /* Succ??s! */,
                                        ),
                                      );
                                    } else {
                                      showUploadMessage(
                                        context,
                                        FFLocalizations.of(context).getText(
                                          'ejhzf9lt' /* ??chec du t??l??chargement du m??d... */,
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
                                    color: FlutterFlowTheme.primaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.edit_outlined,
                                        color: FlutterFlowTheme.tertiaryColor,
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
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Container(
                                        width: 200,
                                        height: 250,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          child: CachedNetworkImage(
                                            imageUrl: uploadedFileUrl5,
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
                                  final selectedMedia =
                                      await selectMediaWithSourceBottomSheet(
                                    context: context,
                                    allowPhoto: true,
                                    textColor: FlutterFlowTheme.primaryColor,
                                    pickerFontFamily: 'Lato',
                                  );
                                  if (selectedMedia != null &&
                                      validateFileFormat(
                                          selectedMedia.storagePath, context)) {
                                    showUploadMessage(
                                      context,
                                      FFLocalizations.of(context).getText(
                                        'vrwld95g' /* T??l??chargement du fichier... */,
                                      ),
                                      showLoading: true,
                                    );
                                    final downloadUrl = await uploadData(
                                        selectedMedia.storagePath,
                                        selectedMedia.bytes);
                                    ScaffoldMessenger.of(context)
                                        .hideCurrentSnackBar();
                                    if (downloadUrl != null) {
                                      setState(
                                          () => uploadedFileUrl5 = downloadUrl);
                                      showUploadMessage(
                                        context,
                                        FFLocalizations.of(context).getText(
                                          '2x0ests4' /* Succ??s! */,
                                        ),
                                      );
                                    } else {
                                      showUploadMessage(
                                        context,
                                        FFLocalizations.of(context).getText(
                                          'ejhzf9lt' /* ??chec du t??l??chargement du m??d... */,
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
                                    color: FlutterFlowTheme.primaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.edit_outlined,
                                        color: FlutterFlowTheme.tertiaryColor,
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
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            final usersUpdateData = createUsersRecordData(
                              photoUrl: uploadedFileUrl1,
                              displayName: nomCompletController.text,
                              function: jobTitleController.text,
                              bio: bioController.text,
                              gender: genderValue,
                              day: dayController.text,
                              month: monthController.text,
                              year: yearController.text,
                              city: textController7.text,
                              country: countryValue,
                              photo1: uploadedFileUrl2,
                              photo2: uploadedFileUrl3,
                              photo3: uploadedFileUrl4,
                              photo4: uploadedFileUrl5,
                            );
                            await currentUserReference.update(usersUpdateData);
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
                            'nncrdp48' /* Enreegistrer */,
                          ),
                          options: FFButtonOptions(
                            width: 200,
                            height: 50,
                            color: FlutterFlowTheme.customColor10,
                            textStyle: FlutterFlowTheme.subtitle2.override(
                              fontFamily: 'Avenir Light ',
                              color: FlutterFlowTheme.primaryColor,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                            elevation: 5,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.primaryColor,
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
  }
}
