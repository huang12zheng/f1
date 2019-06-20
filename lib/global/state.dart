import 'package:fish_redux/fish_redux.dart';
import 'user_info/state.dart';
export 'user_info/state.dart';

class GlobalState implements Cloneable<GlobalState> {

  UserInfoState userInfo;

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