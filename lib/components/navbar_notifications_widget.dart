import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class NavbarNotificationsWidget extends StatefulWidget {
  const NavbarNotificationsWidget({Key key}) : super(key: key);

  @override
  _NavbarNotificationsWidgetState createState() =>
      _NavbarNotificationsWidgetState();
}

class _NavbarNotificationsWidgetState extends State<NavbarNotificationsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.customColor9,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              color: Colors.transparent,
              elevation: 5,
              shape: const CircleBorder(),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.customColor9,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  width: 30,
                  height: 30,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/icons8_romance_30px_1.png',
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              elevation: 5,
              shape: const CircleBorder(),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.customColor9,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  width: 30,
                  height: 30,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/icons8_refresh_love_30px_1.png',
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              elevation: 5,
              shape: const CircleBorder(),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.customColor9,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  width: 30,
                  height: 30,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/icons8_settings_30px_1.png',
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              elevation: 5,
              shape: const CircleBorder(),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.customColor9,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  width: 30,
                  height: 30,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/icons8_notification_30px.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
