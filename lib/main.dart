import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:github_user_search_app/injectable.dart';
import 'package:github_user_search_app/presentation/routes/my_app_router.gr.dart';
import 'package:injectable/injectable.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(environment: Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Github user search',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.green[800],
        accentColor: Colors.blueAccent,
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
              brightness: Brightness.dark,
              color: Colors.green[800],
              iconTheme: ThemeData.dark().iconTheme,
            ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.blue[900],
          foregroundColor: Colors.white,
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      builder: ExtendedNavigator.builder(
        router: MyAppRouter(),
        builder: (context, extendedNav) => Theme(
          data: ThemeData(brightness: Brightness.dark),
          child: extendedNav,
        ),
      ),
    );
  }
}
