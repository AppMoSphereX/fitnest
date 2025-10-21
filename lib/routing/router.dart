import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:fitnest/routing/auth_state_notifier.dart';
import 'package:fitnest/routing/routes.dart';
import 'package:fitnest/ui/auth/login/login_screen_vm.dart';
import 'package:fitnest/ui/home/widgets/home_screen.dart';
import 'package:fitnest/ui/auth/login/login_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final authNotifier = ref.watch(authStateProvider);

  return GoRouter(
    initialLocation: Routes.login,
    debugLogDiagnostics: true,
    refreshListenable: authNotifier,
    redirect: (context, state) {
      final isAuthenticated = authNotifier.isAuthenticated ?? false;
      final isOnLoginPage = state.matchedLocation == Routes.login;

      if (!isAuthenticated && !isOnLoginPage) {
        return Routes.login;
      }
      if (isAuthenticated && isOnLoginPage) {
        return Routes.home;
      }
      return null;
    },
    routes: [
      GoRoute(
        path: Routes.home,
        pageBuilder: (context, state) => MaterialPage(child: HomeScreen()),
      ),
      GoRoute(
        path: Routes.login,
        pageBuilder: (context, state) => MaterialPage(
          child: LoginScreen(ref.watch(loginScreenVMProvider.notifier)),
        ),
      ),
    ],
  );
});
