import 'package:flutter/material.dart';
/// https://github.com/alibaba/fish-redux/issues/87
void showInSnackBar(BuildContext context,String value) {

  snackbar(value)=>SnackBar(
    content: new Text(
      value, // <-------
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontFamily: "WorkSansSemiBold"),
    ),
    backgroundColor: Colors.blue,
    duration: Duration(seconds: 3),
  );

  FocusScope.of(context).requestFocus(new FocusNode());
  Scaffold.of(context).removeCurrentSnackBar();
  Scaffold.of(context).showSnackBar(snackbar(value));
}