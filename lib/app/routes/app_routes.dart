import 'package:bloc_template/app/presentation/presentation.dart';
import 'package:bloc_template/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  const AppRoutes._();

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
    initialLocation: Routes.homeNamedPage,
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => MainPage(
          screens: child,
        ),
        routes: [
          GoRoute(
            path: Routes.homeNamedPage,
            pageBuilder: (context, state) => NoTransitionPage(
              child: HomePage(),
            ),
          ),
          GoRoute(
            path: Routes.profileNamedPage,
            pageBuilder: (context, state) => NoTransitionPage(
              child: ProfilePage(),
            ),
          ),
        ],
      )
    ],
  );

  static GoRouter get router => _router;
}
