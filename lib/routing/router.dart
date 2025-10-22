import 'package:fitnest/ui/auth/signup/signup_screen.dart';
import 'package:fitnest/ui/auth/signup/signup_screen_vm.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:fitnest/routing/auth_state_notifier.dart';
import 'package:fitnest/routing/routes.dart';
import 'package:fitnest/ui/home/home_screen_vm.dart';
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
      final isOnAuthPage =
          state.matchedLocation == Routes.login ||
          state.matchedLocation == Routes.signup;

      if (!isAuthenticated && !isOnAuthPage) {
        return Routes.login;
      }
      if (isAuthenticated && isOnAuthPage) {
        return Routes.home;
      }
      return null;
    },
    routes: [
      GoRoute(
        path: Routes.home,
        pageBuilder: (context, state) => MaterialPage(
          child: HomeScreen(ref.watch(homeScreenVMProvider.notifier)),
        ),
      ),
      GoRoute(
        path: Routes.login,
        pageBuilder: (context, state) => MaterialPage(
          child: LoginScreen(ref.watch(loginScreenVMProvider.notifier)),
        ),
      ),
      GoRoute(
        path: Routes.signup,
        pageBuilder: (context, state) => MaterialPage(
          child: SignupScreen(ref.watch(signupScreenVMProvider.notifier)),
        ),
      ),
    ],
  );
});
