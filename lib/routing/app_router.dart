import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio/features/home/presentation/home_page.dart';

import 'not_found_screen.dart';

enum AppRoute { home }

GoRouter router = GoRouter(
  debugLogDiagnostics: false,
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: const <RouteBase>[
        // GoRoute(
        //   path: 'details',
        //   builder: (BuildContext context, GoRouterState state) {
        //     //return const DetailsScreen();
        //   },
        // ),
      ],
    ),
  ],
  errorBuilder: (context, state) => const NotFoundScreen(),
);
