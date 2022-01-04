import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class NavbarOnWidget extends StatefulWidget {
  const NavbarOnWidget({Key key}) : super(key: key);

  @override
  _NavbarOnWidgetState createState() => _NavbarOnWidgetState();
}

class _NavbarOnWidgetState extends State<NavbarOnWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Material(
            color: Colors.transparent,
            elevation: 3,
            shape: const CircleBorder(),
            child: Container(
              width: 66,
              height: 66,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.primaryColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: FlutterFlowTheme.tertiaryColor,
                  )
                ],
                shape: BoxShape.circle,
              ),
              child: Container(
                width: 120,
                height: 120,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/undo_30px.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            elevation: 3,
            shape: const CircleBorder(),
            child: Container(
              width: 86,
              height: 86,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.tertiaryColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: FlutterFlowTheme.primaryColor,
                  )
                ],
                shape: BoxShape.circle,
                border: Border.all(
                  color: FlutterFlowTheme.primaryColor,
                ),
              ),
              child: Container(
                width: 120,
                height: 120,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/romance_40px.png',
                  fit: BoxFit.none,
                ),
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            elevation: 3,
            shape: const CircleBorder(),
            child: Container(
              width: 66,
              height: 66,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.secondaryColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: FlutterFlowTheme.secondaryColor,
                  )
                ],
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.clear,
                color: FlutterFlowTheme.tertiaryColor,
                size: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
