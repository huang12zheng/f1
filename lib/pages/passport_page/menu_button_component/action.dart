import 'package:fish_redux/fish_redux.dart';

enum MenuButtonAction { 
  onSelect
}

class MenuButtonActionCreator {
  static Action onSelect(int uniqueId) {
    return Action(MenuButtonAction.onSelect,payload: uniqueId);
  }
}
