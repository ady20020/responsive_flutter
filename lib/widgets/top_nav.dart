import 'package:flutter/material.dart';

import '../helpers/responsiveness.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading:!ResponsiveWidget.isSmallScreen(context) ?
      Row(
        children:[
          Container(
            padding:EdgeInsets.only(left:16),
            child:Image.asset("assets/icons/logo.png",width: 28,)
          )
        ]
      ): IconButton(icon: Icon(Icons.menu),onPressed: (){
        // key.currentState.openDrawer();
      }),
      elevation: 0);