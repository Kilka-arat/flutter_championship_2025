import 'package:go_router/go_router.dart';
import 'package:matule/home_screen.dart';
import 'package:matule/root_screen.dart';

class RouterConfigGo {
  static GoRouter get router => GoRouter(
    routes: [
      StatefulShellRoute.indexedStack(
        builder:
            (context, state, navigationShell) =>
                RootScreen(statefulNavigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/',
                builder: (context, state) => HomeScreen(),
                name: 'home',
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/notification',
                builder: (context, state) => HomeScreen(),
                name: 'notification'
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                builder: (context, state) => HomeScreen(),
                name: 'profile',
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
