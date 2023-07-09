import 'package:cost_plan/core/presentation/app_routes.dart';
import 'package:cost_plan/presentation/screen/home/home_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final _router = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.home.path,
        builder: (_, __) => HomeScreen(),
      ),
    ],
  );

  static GoRouter get router => _router;
}
