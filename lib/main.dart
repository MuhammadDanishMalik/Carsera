import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';
import 'go_router.dart';
import 'homepage.dart';

void main() => runApp(const MyApp());

enum NavigationMode {
  navigator,
  goRouter,
  goRouterBuilder,
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const NavigationMode currentNavigationMode = NavigationMode.goRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const NavigationModeWrapper(),
    );
  }
}

class NavigationModeWrapper extends StatelessWidget {
  const NavigationModeWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Navigation Example';
    final theme = ThemeData(
      appBarTheme: const AppBarTheme(
        color: Colors.blue,
        foregroundColor: Colors.white,
      ),
    );

    return MaterialApp(
      title: title,
      theme: theme,
      home: const Homepage(),
    );
  }
}
