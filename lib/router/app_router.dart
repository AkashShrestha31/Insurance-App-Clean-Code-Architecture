import 'package:go_router/go_router.dart';
import 'package:policy_plus/features/home/presentations/pages/home_page.dart';
import 'package:policy_plus/features/login/presentations/pages/login_page.dart';
import 'package:policy_plus/features/main/presentations/pages/main_pages.dart';
import 'package:policy_plus/features/policies/presentations/pages/all_categories_page.dart';
import 'package:policy_plus/features/policies/presentations/pages/plan_details_page.dart';
import 'package:policy_plus/features/policies/presentations/pages/policies_pages.dart';
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
            path: '/main',
            name: 'main',
            builder: (context, state) => const MainPages()),

        GoRoute(
            path: '/policy',
            name: 'policy',
            builder: (context, state) => const PoliciesPage()),
        GoRoute(
            path: '/policy-details',
            name: 'policy-details',
            builder: (context, state) => const PlanDetailsPage()),
        GoRoute(
            path: '/all-categories',
            name: 'all-categories',
            builder: (context, state) => const AllCategoriesPage())
      ]);
}
