import 'package:fish_redux/fish_redux.dart';

enum MenuButtonAction { 
  onSelect,
  changeTheme,
  onChangeTheme
  
}

class MenuButtonActionCreator {
  static Action onSelect(int uniqueId) {
    return Action(MenuButtonAction.onSelect,payload: uniqueId);
  }

  static Action onChangeTheme(int uniqueId) {
    return Action(MenuButtonAction.onChangeTheme,payload: uniqueId);
  }

  static Action changeTheme(int uniqueId) {
    return Action(MenuButtonAction.changeTheme,payload: uniqueId);
  }
}
