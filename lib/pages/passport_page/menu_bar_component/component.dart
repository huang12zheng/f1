import '../menu_button_component/component.dart';
import 'package:fish_redux/fish_redux.dart';

import 'state.dart';
import 'view.dart';

class MenuBarComponent extends Component<MenuBarState> {
  MenuBarComponent(): 
  super(
    view: buildView,
    dependencies: Dependencies<MenuBarState>(
      slots: <String, Dependent<MenuBarState>>{
        'left': LeftConnector()+  MenuButtonComponent(),
        'right': RightConnector()+MenuButtonComponent()
      }
    )
    );
}
