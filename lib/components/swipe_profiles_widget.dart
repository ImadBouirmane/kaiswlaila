import '../backend/backend.dart';
import '../components/no_swipe_widget.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class SwipeProfilesWidget extends StatefulWidget {
  const SwipeProfilesWidget({Key key}) : super(key: key);

  @override
  _SwipeProfilesWidgetState createState() => _SwipeProfilesWidgetState();
}

class _SwipeProfilesWidgetState extends State<SwipeProfilesWidget> {
  PageController pageViewController;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProfilesRecord>>(
      future: queryProfilesRecordOnce(
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
        List<ProfilesRecord> pageViewProfilesRecordList = snapshot.data;
        if (pageViewProfilesRecordList.isEmpty) {
          return Center(
            child: NoSwipeWidget(),
          );
        }
        final pageViewProfilesRecord = pageViewProfilesRecordList.isNotEmpty
            ? pageViewProfilesRecordList.first
            : null;
        return Builder(
          builder: (context) {
            final profiles =
                pageViewProfilesRecord.users.toList()?.toList() ?? [];
            if (profiles.isEmpty) {
              return Center(
                child: NoSwipeWidget(),
              );
            }
            return Container(
              width: double.infinity,
              height: 500,
              child: PageView.builder(
                controller: pageViewController ??= PageController(
                    initialPage: min(profiles.length, profiles.length - 1)),
                scrollDirection: Axis.horizontal,
                itemCount: profiles.length,
                itemBuilder: (context, profilesIndex) {
                  final profilesItem = profiles[profilesIndex];
                  return Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.05, -0.2),
                        child: Container(
                          width: 300,
                          height: 300,
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
                        alignment: AlignmentDirectional(0, -0.1),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: FlutterFlowExpandedImageView(
                                  image: CachedNetworkImage(
                                    imageUrl:
                                        'https://picsum.photos/seed/704/600',
                                    fit: BoxFit.contain,
                                  ),
                                  allowRotation: false,
                                  tag: 'circleImageTag2',
                                  useHeroAnimation: true,
                                ),
                              ),
                            );
                          },
                          child: Hero(
                            tag: 'circleImageTag2',
                            transitionOnUserGestures: true,
                            child: Container(
                              width: 300,
                              height: 300,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: CachedNetworkImage(
                                imageUrl: 'https://picsum.photos/seed/704/600',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
