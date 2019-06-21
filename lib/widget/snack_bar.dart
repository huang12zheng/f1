import 'package:flutter/material.dart';
/// https://github.com/alibaba/fish-redux/issues/87
void showInSnackBar(String value) {

    snackbar(value)=>SnackBar(
      content: new Text(
        value,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontFamily: "WorkSansSemiBold"),
      ),
      backgroundColor: Colors.blue,
      duration: Duration(seconds: 3),
    );

    Builder(builder: (BuildContext context){
      FocusScope.of(context).requestFocus(new FocusNode());
      Scaffold.of(context).removeCurrentSnackBar();
      Scaffold.of(context).showSnackBar(snackbar(value));
    });
  }