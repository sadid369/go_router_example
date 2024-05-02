import 'package:go_router/go_router.dart';
import 'package:go_router_example/dashboard.dart';
import 'package:go_router_example/profile.dart';

class AppRouter {
  final GoRouter goRouter;
  AppRouter() : goRouter = _router;
  static get _router => GoRouter(
        initialLocation: '/',
        restorationScopeId: 'router',
        routes: [
          GoRoute(
            name: 'dashboard',
            path: '/',
            builder: (context, state) => const Dashboard(),
            routes: [
              GoRoute(
                name: 'profile',
                path: "profile/:name",
                builder: (context, state) =>
                    Profile(name: state.pathParameters['name']!),
              )
            ],
          ),
        ],
      );
  // GoRouter get router => _router;
}
