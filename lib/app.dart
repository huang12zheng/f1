// Page<T, dynamic> pageConfiguration<T extends 
import 'package:flutter/material.dart';

Widget createApp() {
  final AbstractRoutes = routes = HybridRoutes(routes:<AbstractRoutes>[
    PageRoutes(pages:<String, Page<Object,dynamic>>{
      'todo_list': pageConfiguration(ToDoListPage()),
      'todo_edit': pageConfiguration(ToDoListPage()),
    }),
  ]);
}