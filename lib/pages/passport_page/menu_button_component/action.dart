import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MenuButtonAction { 
  onSelect
}

class MenuButtonActionCreator {
  static Action onSelect(String uniqueId) {
    return Action(MenuButtonAction.onSelect,payload: uniqueId);
  }
}
