import 'package:f1/pages/passport_page/state.dart';
import 'package:fish_redux/fish_redux.dart';


enum PassportAction { 
  setLogin, setSignUp,
  selectNew, selectExisting,
  select,
}

class PassportActionCreator {
  static Action setLogin() {
    return const Action(PassportAction.setLogin);
  }
  static Action setSignUp() {
    return const Action(PassportAction.setSignUp);
  }
  static Action select(PassportState state) {
    return Action(PassportAction.select,payload: state);
  }
  
}
