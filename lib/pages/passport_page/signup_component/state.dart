import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class SignupState implements Cloneable<SignupState> {
  bool signupFlag = true;
  bool confirmFlag = true;

  final FocusNode focusNodePassword = FocusNode();
  final FocusNode focusNodeConfirmPassword = FocusNode();
  final FocusNode focusNodeEmail = FocusNode();
  final FocusNode focusNodeName = FocusNode();
  final FocusNode focusNodeMoblie = FocusNode();

  TextEditingController emailController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  TextEditingController mobileController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmPasswordController = new TextEditingController();

  @override
  SignupState clone() {
    return SignupState()
      ..emailController=emailController
      ..nameController=nameController
      ..mobileController=mobileController
      ..passwordController=passwordController
      ..confirmPasswordController=confirmPasswordController
      ..confirmFlag=confirmFlag
      ..signupFlag=signupFlag
    ;
  }
}
