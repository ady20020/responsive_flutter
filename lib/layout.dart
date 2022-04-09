import 'package:flutter/material.dart';

import 'helpers/responsiveness.dart';
import 'widgets/large_screen.dart';
import 'widgets/small_screen.dart';
import 'widgets/top_nav.dart';
class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey =GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:topNavigationBar(context,scaffoldKey),
      //  appBar:AppBar(
      //   elevation:0,
      //   backgroundColor:Colors.white
      // ),
      body:ResponsiveWidget(largeScreen: LargeScreen(),smallScreen: SmallScreen())
      
    );
  }
}