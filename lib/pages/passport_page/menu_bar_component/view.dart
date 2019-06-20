import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';
import 'utils/bubble_indication_painter.dart';

Widget buildView(MenuBarState state, Dispatch dispatch, ViewService viewService) {
  return Padding( padding: EdgeInsets.only(top: 20),
    child: Container(
      width: 300.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: Color(0x552B2B2B),
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
      child: CustomPaint(
        painter: TabIndicationPainter(pageController: state.pageController),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(child:viewService.buildComponent('left')),
            Expanded(child:viewService.buildComponent('right')),
          ],
        )
      )
    )
  );
}

