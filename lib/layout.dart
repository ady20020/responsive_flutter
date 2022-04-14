import 'package:flutter/material.dart';
import 'package:responsive_flutter_youtube/widgets/side_menu.dart';

import 'helpers/responsiveness.dart';
import 'widgets/large_screen.dart';
import 'widgets/small_screen.dart';
import 'widgets/top_nav.dart';
class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey =GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:scaffoldKey,
      appBar:topNavigationBar(context,scaffoldKey),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body:ResponsiveWidget(largeScreen: LargeScreen(),smallScreen: SmallScreen())
      
    );
  }
}