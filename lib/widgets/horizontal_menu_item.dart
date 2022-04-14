import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:responsive_flutter_youtube/constants/controllers.dart';
import 'package:responsive_flutter_youtube/widgets/custom_text.dart';

import '../constants/style.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;

  const HorizontalMenuItem({Key? key,required this.itemName, required this.onTap }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap:()=>onTap(),
      onHover: (value) {
        value ?
        menuController.onHover(itemName) :
        menuController.onHover("not hovering");
      },
      child: Obx(()=>Container(
        color: menuController.isHovering(itemName) ?
        lightGrey.withOpacity(.1) : Colors.transparent,
        child:Row(
          children: [
            Visibility(
              visible:menuController.isHovering(itemName) || menuController.isActive(itemName),
              maintainSize:true,
              maintainAnimation:true,
              maintainState:true,
              child:Container(
                width:6,
                height:40,
                color:dark,
              )
            ),
            SizedBox(width: _width / 80,),
            Padding(
              padding:EdgeInsets.all(16),
              child:menuController.returnIconFor(itemName),

              ),
              if(!menuController.isActive(itemName))
              Flexible(
                child:CustomText(
                  text:itemName,color:menuController.isHovering(itemName) ? dark : lightGrey,size:18,weight:FontWeight.bold))
                  else
                  Flexible(
                    child:CustomText(text: itemName, color:dark,size:18,weight:FontWeight.bold)
                  )
          ],
        )
      )),
    );
  }
}