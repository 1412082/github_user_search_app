// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screens/search/search_screen.dart';
import '../screens/user_profile/user_profile_screen.dart';

class Routes {
  static const String searchScreen = '/';
  static const String userProfileScreen = '/user-profile-screen';
  static const all = <String>{
    searchScreen,
    userProfileScreen,
  };
}

class MyAppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.searchScreen, page: SearchScreen),
    RouteDef(Routes.userProfileScreen, page: UserProfileScreen),
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
    UserProfileScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const UserProfileScreen(),
        settings: data,
      );
    },
  };
}
