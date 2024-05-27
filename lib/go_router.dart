import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'profile.dart';

final GoRouter goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Homepage(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const Profile(),
    ),
  ],
);
