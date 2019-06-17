import 'package:fish_redux/fish_redux.dart';

enum GlobalAction { ChangeThemeColor,RandomThemeColor }

class GlobalActionCreator {
  static Action onChangeThemeColor() {
    return const Action(GlobalAction.ChangeThemeColor);
  }

  static Action onRandomThemeColor() {
    return const Action(GlobalAction.RandomThemeColor);
  }
}