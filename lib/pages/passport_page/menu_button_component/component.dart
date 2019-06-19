import 'package:fish_redux/fish_redux.dart';

import 'state.dart';
import 'view.dart';

class MenuButtonComponent extends Component<MenuButtonState> {
  MenuButtonComponent()
      : super(view: buildView);
}
