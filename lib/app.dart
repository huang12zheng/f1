import 'package:f1/global/store.dart';
import 'package:flutter/material.dart';

import 'route/index.dart';


// Page<T, dynamic> pageConfiguration<T extends 

Widget createApp() {
  
    return MaterialApp(
      title: getState().title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: getState().themeColor),
      home: routes.buildPage( getState().home, null),
      onGenerateRoute: generateRoute,
  );
}