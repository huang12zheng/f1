import 'package:fish_redux/fish_redux.dart';

enum LoginAction {
  toggleLoginObscure,
  onLogin
}

class LoginActionCreator {
  static Action toggleLoginObscure() {
    return const Action(LoginAction.toggleLoginObscure);
  }
  static Action onLogin(dynamic context) {
    return Action(LoginAction.onLogin, payload: context);
  }
}
