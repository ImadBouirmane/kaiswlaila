import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressbarImageWidget extends StatefulWidget {
  const ProgressbarImageWidget({Key key}) : super(key: key);

  @override
  _ProgressbarImageWidgetState createState() => _ProgressbarImageWidgetState();
}

class _ProgressbarImageWidgetState extends State<ProgressbarImageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red, Color(0xFFFFFF00)],
                stops: [0, 1],
                begin: AlignmentDirectional(0, -1),
                end: AlignmentDirectional(0, 1),
              ),
            ),
            child: Stack(
              alignment: AlignmentDirectional(0, 0),
              children: [
                Align(
                  alignment: AlignmentDirectional(0.2, 0),
                  child: Container(
                    width: 250,
                    height: 250,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/Asset_15@4x.png',
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.2, 0),
                  child: Container(
                    width: 250,
                    height: 250,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/Asset_15@4x.png',
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: CircularPercentIndicator(
                          percent: 0.5,
                          radius: 115,
                          lineWidth: 10,
                          animation: true,
                          progressColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          backgroundColor:
                              FlutterFlowTheme.of(context).customColor6,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Container(
                          width: 220,
                          height: 220,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            'https://picsum.photos/seed/694/600',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
