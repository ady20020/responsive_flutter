import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController{
  static NavigationController instance = Get.find();
  late GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  Future<dynamic>? navigateTo(String routeName){
    return navigatorKey.currentState?.pushNamed(routeName);
  }

  goBack() => navigatorKey.currentState?.pop();

}