import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'page-route.dart';

Function generateRoute = (RouteSettings settings) {
  return MaterialPageRoute<Object>(builder: (BuildContext context){
    return routes.buildPage(settings.name, settings.arguments);
  });
};

final AbstractRoutes routes = HybridRoutes(routes: <AbstractRoutes>[
  PageRoutes(
    pages: pageRoutes,
  ),
]);