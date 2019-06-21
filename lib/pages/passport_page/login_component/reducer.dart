import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<LoginState> buildReducer() {
  return asReducer(
    <Object, Reducer<LoginState>>{
      LoginAction.toggleLogin: toggleLogin,
    },
  );
}

LoginState toggleLogin(LoginState state, Action action) {
  final LoginState newState = state.clone();
  return newState..obscureTextAccess=!newState.obscureTextAccess;
}
