import 'package:fish_redux/fish_redux.dart';

enum LoginAction { toggleLogin }

class LoginActionCreator {
  static Action toggleLogin() {
    return const Action(LoginAction.toggleLogin);
  }
}
