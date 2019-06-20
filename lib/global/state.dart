import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'user_info/state.dart';
export 'user_info/state.dart';

abstract class GlobalBaseState<T extends Cloneable<T>> implements Cloneable<T> {
  UserInfoState get userInfo;
  set userInfo(UserInfoState userInfo);
}
class GlobalState implements GlobalBaseState<GlobalState> {
  @override
  UserInfoState userInfo;
  @override
  GlobalState clone() {
    return GlobalState()
      ..userInfo=userInfo
    ;
  }
}

GlobalState initState(){
  
  return GlobalState()
    ..userInfo=UserInfoState()
    ;
}