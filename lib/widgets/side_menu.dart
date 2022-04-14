import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_flutter_youtube/widgets/side_menu_item.dart';

import '../constants/controllers.dart';
import '../constants/style.dart';
import '../helpers/responsiveness.dart';
import '../routing/routes.dart';
import 'custom_text.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      color:light,
      child:ListView(
        children: [
          if(ResponsiveWidget.isSmallScreen(context))
          Column(
            mainAxisSize:MainAxisSize.min,
            children: [
              SizedBox(
                height:40,
              ),
              Row(
                children:[
                  SizedBox(width:_width / 48),
                  Padding(
                    padding:const EdgeInsets.only(right:12),
                    child: Image.asset("assets/icons/logo.png"),
                  ),
                  Flexible(
                    child:CustomText(
                      text:"Dash",
                      size:20,
                      weight:FontWeight.bold,
                      color:active,
                    )
                  ),
                  SizedBox(width:_width / 48)
                ]
              )
            ],
          ),
          Divider(color:lightGrey.withOpacity(.1),),

          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems.map((itemName) => SideMenuItem(
              itemName : itemName == AuthenticationPageRoute ? "Log Out" : itemName,
              onTap: () {
                if(itemName == AuthenticationPageRoute){

                }
                if(!menuController.isActive(itemName)){
                  menuController.changeActiveitemTo(itemName);
                  if(ResponsiveWidget.isSmallScreen(context)) {
                    Get.back();
                  }
                  // navigationController.navigateTo(item.route);
                            
                }
              }
            )).toList(),
          )
          
        ],
      )
      
    );
  }
}