import 'package:go_router/go_router.dart';
import 'package:policy_plus/features/home/presentations/pages/home_page.dart';
import 'package:policy_plus/features/login/presentations/pages/login_page.dart';
import 'package:policy_plus/features/signup/presentations/pages/signup_page.dart';

class AppRoute {
  AppRoute._();

  static GoRouter goRouter = GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      routes: <GoRoute>[
        GoRoute(
            path: '/',
            name: 'login',
            builder: (context, state) => const LoginPage()),
                GoRoute(
            path: '/signUp',
            name: 'signUp',
            builder: (context, state) => const SingUpPage()),
            GoRoute(
            path: '/home',
            name: 'home',
            builder: (context, state) => const HomePage())
      ]);
}
