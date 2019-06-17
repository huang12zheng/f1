import 'package:fish_redux/fish_redux.dart';

import 'reducer.dart';
import 'state.dart';

// class GlobalStore {
//   static Store<GlobalState> _store;
//   static Store<GlobalState> get store =>
//     _store ??= createStore<GlobalState>(GlobalState(), buildReducer());
// }
final Store<GlobalState> store=createStore<GlobalState>(GlobalState(), buildReducer());
GlobalState getState() => store.getState();