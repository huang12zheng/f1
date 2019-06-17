import 'package:flutter/material.dart';

import 'route/index.dart';


// Page<T, dynamic> pageConfiguration<T extends 

Widget createApp() {
  
  return MaterialApp(
    title: 'School',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.blue),
    // home: routes.buildPage('todo_list'.null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context){
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}