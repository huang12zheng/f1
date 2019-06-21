import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class LoginState implements Cloneable<LoginState> {

  final FocusNode focusNodeAccess = FocusNode();
  final FocusNode focusNodeVerify = FocusNode();

  TextEditingController accessController=TextEditingController();
  TextEditingController verifyController=TextEditingController();

  bool obscureTextVerify=true;

  @override
  LoginState clone() {
    return LoginState()
      ..obscureTextVerify=obscureTextVerify
      ..accessController=accessController
      ..verifyController=verifyController
    ;
  }
}
