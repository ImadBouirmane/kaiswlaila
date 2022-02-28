import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class InterestsContainerWidget extends StatefulWidget {
  const InterestsContainerWidget({Key key}) : super(key: key);

  @override
  _InterestsContainerWidgetState createState() =>
      _InterestsContainerWidgetState();
}

class _InterestsContainerWidgetState extends State<InterestsContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(),
        child: AuthUserStreamWidget(
          child: Builder(
            builder: (context) {
              final qs13List1 = (currentUserDocument?.qs13List1?.toList() ?? [])
                  .take(5)
                  .toList();
              return Wrap(
                spacing: 2,
                runSpacing: 2,
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.center,
                verticalDirection: VerticalDirection.down,
                clipBehavior: Clip.none,
                children: List.generate(qs13List1.length, (qs13List1Index) {
                  final qs13List1Item = qs13List1[qs13List1Index];
                  return Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: FlutterFlowTheme.of(context).customColor9,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'kmsyqtok' /*  */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Avenir Light ',
                              color: FlutterFlowTheme.of(context).customColor7,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  );
                }),
              );
            },
          ),
        ),
      ),
    );
  }
}
