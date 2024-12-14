import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zerodha_clone/config/app_router_constatnt.dart';
import 'package:zerodha_clone/features/Login/presentation/view/login.dart';
import 'package:zerodha_clone/features/Welcome_to_Kite/presentation/view/welcome.dart';

class AppRouter {
  static GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: AppRouterConstatnt.welcomeSCreen,
      builder: (BuildContext context, GoRouterState state) {
        return const WelcomeScreen();
      },
      routes: [
        GoRoute(
          path: AppRouterConstatnt.loginSCreen,
          builder: (BuildContext context, GoRouterState state) {
            return const LoginScreen();
          },
        )
      ],
    ),
  ]);

  static push(String path, BuildContext context, {Map<String, dynamic>? data}) {
    Map<String, dynamic> updatedData =
        data != null ? {'data': data} : {'data': {}};

    GoRouter.of(context).push(path, extra: updatedData);
  }

  static pushReplacement(String path, BuildContext context,
      {Map<String, dynamic>? data}) {
    Map<String, dynamic> updatedData =
        data != null ? {'data': data} : {'data': {}};

    GoRouter.of(context).pushReplacement(path, extra: updatedData);
  }

  static back(BuildContext context) {
    GoRouter.of(context).pop();
  }
}
