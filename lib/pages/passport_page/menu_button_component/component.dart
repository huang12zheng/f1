import 'package:fish_redux/fish_redux.dart';

import 'state.dart';
import 'view.dart';
import 'reducer.dart';
import 'effect.dart';

class MenuButtonComponent extends Component<MenuButtonState> {
  MenuButtonComponent()
      : super(
        view: buildView,
        reducer: buildReducer(),
        effect: buildEffect(),
      );
}
