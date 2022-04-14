import 'package:flutter/cupertino.dart';
import 'package:responsive_flutter_youtube/routing/routes.dart';

import '../constants/controllers.dart';

Navigator localNavigator()=>Navigator(
  key: navigationController.navigatorKey,
  onGenerateRoute: generateRoute,
  initialRoute: OverViewPageRoute,
  )