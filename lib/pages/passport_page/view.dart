import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

typedef BuildView = Widget Function(PassportState state, Dispatch dispatch, ViewService viewService);

Widget buildView(PassportState state, Dispatch dispatch, ViewService viewService) {
  BuildContext context = viewService.context;

  return Scaffold(
    body: Container(
      child: _bodyView(state,dispatch,viewService),
      width:  getWidth(context),
      height: getHeidht(context),
      // decoration: bodyBoxDecoration(),
    )
  );

  
}

Column _bodyView(PassportState state, Dispatch dispatch, ViewService viewService){
  return Column(
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      // _loginImage(),
      // _buildMenuBar(state,dispatch,viewService),
      viewService.buildComponent('menu'),
      // _pageController(state,dispatch,viewService),
    ],
  );
}

// bodyBoxDecoration() => BoxDecoration(
//       gradient: LinearGradient(
//         colors: [
//           // Theme.Colors.loginGradientStart,
//           // Theme.Colors
//           // TODO
//         ],
//         begin: const FractionalOffset(0.0,0.0),
//         end:   const FractionalOffset(1.0,1.0),
//         stops: [0.0, 1.0],
//         tileMode: TileMode.clamp
//       )
//     );

double getWidth(BuildContext context)  => MediaQuery.of(context).size.width;

double getHeidht(BuildContext context) => MediaQuery.of(context).size.height >= 775? MediaQuery.of(context).size.height: 775;


// _pageController(PassportState state, Dispatch dispatch, ViewService viewService) {
//   return
//   Expanded(
//     flex: 2,
//     child: PageView(
//       controller: state.pageController,
//       onPageChanged: (i) {
//         if (i == 0) return dispatch(PassportActionCreator.setLogin() );
//         if (i == 1) return dispatch(PassportActionCreator.setSignUp());
//       },
//       children: <Widget>[
//         new ConstrainedBox(
//           constraints: const BoxConstraints.expand(),
//           child: viewService.buildComponent('login'),
//         ),
//         new ConstrainedBox(
//           constraints: const BoxConstraints.expand(),
//           child: viewService.buildComponent('signUp')
//         ),
//       ],
//     ),
//   );
// }

// Widget _loginImage()=> Padding(
//   padding: EdgeInsets.only(top:75.0),
//   // TODO LoginImage
//   child: Container()
// );