import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class LoginState implements Cloneable<LoginState> {

  final FocusNode focusNodeAccess = FocusNode();
  final FocusNode focusNodeVerify = FocusNode();

  TextEditingController accessController=TextEditingController();
  TextEditingController verifyController=TextEditingController();

  bool obscureTextAccess=true;

  @override
  LoginState clone() {
    return LoginState()
      ..obscureTextAccess=obscureTextAccess
      // ..focusNodeAccess=focusNodeAccess
      // ..focusNodeVerify=focusNodeVerify
      ..accessController=accessController
      ..verifyController=verifyController
    ;
  }
}
