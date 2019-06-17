import 'package:fish_redux/fish_redux.dart';

enum ConfigAction { ChangeThemeColor, RandomThemeColor }

class ConfigActionCreator {
  static Action onChangeThemeColor() {
    return const Action(ConfigAction.ChangeThemeColor);
  }

  static Action onRandomThemeColor() {
    return const Action(ConfigAction.RandomThemeColor);
  }
}
