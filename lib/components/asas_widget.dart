import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AsasWidget extends StatefulWidget {
  const AsasWidget({Key key}) : super(key: key);

  @override
  _AsasWidgetState createState() => _AsasWidgetState();
}

class _AsasWidgetState extends State<AsasWidget> {
  bool maleValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
      child: FutureBuilder<List<UsersRecord>>(
        future: queryUsersRecordOnce(
          queryBuilder: (usersRecord) =>
              usersRecord.where('forMale', isEqualTo: true),
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
          List<UsersRecord> maleUsersRecordList = snapshot.data;
          // Return an empty Container when the document does not exist.
          if (snapshot.data.isEmpty) {
            return Container();
          }
          final maleUsersRecord =
              maleUsersRecordList.isNotEmpty ? maleUsersRecordList.first : null;
          return Theme(
            data: ThemeData(
              checkboxTheme: CheckboxThemeData(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              unselectedWidgetColor: Color(0xFF707070),
            ),
            child: CheckboxListTile(
              value: maleValue ??= false,
              onChanged: (newValue) => setState(() => maleValue = newValue),
              title: Text(
                FFLocalizations.of(context).getText(
                  '3obn0smn' /* Homme */,
                ),
                style: FlutterFlowTheme.of(context).subtitle1,
              ),
              activeColor: FlutterFlowTheme.of(context).tertiaryColor,
              checkColor: FlutterFlowTheme.of(context).primaryColor,
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
            ),
          );
        },
      ),
    );
  }
}
