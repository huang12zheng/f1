import 'package:f1/global/user_info/config/state.dart';
import 'package:fish_redux/fish_redux.dart';
export 'config/state.dart';
class UserInfoState implements Cloneable<UserInfoState> {
  ConfigState config;

  @override
  UserInfoState clone() {
    return UserInfoState()
      ..config = config
    ;
  }
}

UserInfoState initState(Map<String, dynamic> args) {
  return UserInfoState();
}
