import 'package:f1/global/store.dart';
import 'package:flutter/material.dart';

import 'route/index.dart';


// Page<T, dynamic> pageConfiguration<T extends 

Widget createApp() {
  
    return MaterialApp(
      title: config().title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: config().themeColor),
      home: routes.buildPage( config().home, null),
      onGenerateRoute: generateRoute,
  );
}