import 'package:fish_redux/fish_redux.dart';

import 'page-route.dart';

final AbstractRoutes routes = HybridRoutes(routes: <AbstractRoutes>[
  PageRoutes(
    pages: pageRoutes,
  ),
]);