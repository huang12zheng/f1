import 'package:fish_redux/fish_redux.dart';

enum LoginAction { toggleLoginObscure }

class LoginActionCreator {
  static Action toggleLoginObscure() {
    return const Action(LoginAction.toggleLoginObscure);
  }
}
