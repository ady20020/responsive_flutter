import 'package:flutter/material.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;
const int customScreenSize = 1100;




class ResponsiveWidget extends StatelessWidget {
  // the custom screen size is specific to this project
  late Widget largeScreen;
  late Widget mediumScreen;
  late Widget smallScreen;
  late Widget customScreen;


  // ignore: use_key_in_widget_constructors
   ResponsiveWidget({
    
      required this.largeScreen,
     required this.smallScreen,
  });

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < mediumScreenSize;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= mediumScreenSize &&
        MediaQuery.of(context).size.width < largeScreenSize;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > largeScreenSize;
  }


  static bool isCustomSize(BuildContext context) {
    return MediaQuery.of(context).size.width <= customScreenSize &&
        MediaQuery.of(context).size.width >= mediumScreenSize;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double _width = constraints.maxWidth;
        if (_width >= largeScreenSize) {
          return largeScreen;
        // } else if (_width < largeScreenSize &&
        //     _width >= mediumScreenSize) {
        //   return mediumScreen ;
        } else {
          return smallScreen ;
        }
      },
    );
  }
}
