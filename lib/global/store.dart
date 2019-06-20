import 'package:fish_redux/fish_redux.dart';

import 'reducer.dart';
import 'state.dart';

final Store<GlobalState> store=createStore<GlobalState>(initState(), buildReducer());
ConfigState config() => store.getState().userInfo.config;