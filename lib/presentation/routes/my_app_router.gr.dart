// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screens/search/search_screen.dart';

class Routes {
  static const String searchScreen = '/';
  static const all = <String>{
    searchScreen,
  };
}

class MyAppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.searchScreen, page: SearchScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SearchScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SearchScreen(),
        settings: data,
      );
    },
  };
}
