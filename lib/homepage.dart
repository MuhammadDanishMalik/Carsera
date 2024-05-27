import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';
import 'profile.dart';
import 'main.dart' as myApp;

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _pushProfilePage(context),
          child: const Text('Go to Profile'),
        ),
      ),
    );
  }

  Future<void> _pushProfilePage(BuildContext context) async {
    switch (myApp.MyApp.currentNavigationMode) {
      case myApp.NavigationMode.navigator:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => const Profile()),
        );
        break;
      case myApp.NavigationMode.goRouter:
      case myApp.NavigationMode.goRouterBuilder:
        GoRouter.of(context).go('/profile');
        break;
    }
  }
}
