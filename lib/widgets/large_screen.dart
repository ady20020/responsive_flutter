import 'package:flutter/material.dart';

import 'side_menu.dart';

class LargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Expanded(child:SideMenu(
            
          )),
          Expanded(
            flex:5,
            child:Container(
              color:Colors.yellow
            )
          )
        ],
      );
  }
}