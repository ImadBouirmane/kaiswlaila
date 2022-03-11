import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PourcentageWidget extends StatefulWidget {
  const PourcentageWidget({Key key}) : super(key: key);

  @override
  _PourcentageWidgetState createState() => _PourcentageWidgetState();
}

class _PourcentageWidgetState extends State<PourcentageWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: FutureBuilder<List<UsersRecord>>(
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
          List<UsersRecord> progressBarUsersRecordList = snapshot.data;
          final progressBarUsersRecord = progressBarUsersRecordList.isNotEmpty
              ? progressBarUsersRecordList.first
              : null;
          return CircularPercentIndicator(
            percent: progressBarUsersRecord.progressBar,
            radius: 115,
            lineWidth: 10,
            animation: true,
            progressColor: FlutterFlowTheme.of(context).primaryColor,
            backgroundColor: FlutterFlowTheme.of(context).customColor6,
          );
        },
      ),
    );
  }
}
