import 'package:fitnest/domain/auth_session_manager.dart';
import 'package:fitnest/domain/models/auth/auth_status.dart';
import 'package:fitnest/ui/auth/signup/signup_screen.dart';
import 'package:fitnest/ui/auth/signup/signup_screen_vm.dart';
import 'package:fitnest/ui/profile_completion/profile_completion_screen.dart';
import 'package:fitnest/ui/profile_completion/profile_completion_vm.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:fitnest/routing/routes.dart';
import 'package:fitnest/ui/home/home_screen_vm.dart';
import 'package:fitnest/ui/auth/login/login_screen_vm.dart';
import 'package:fitnest/ui/home/home_screen.dart';
import 'package:fitnest/ui/auth/login/login_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final authSessionManager = ref.watch(authSessionManagerProvider);

  return GoRouter(
    initialLocation: Routes.login,
    debugLogDiagnostics: true,
    refreshListenable: authSessionManager,
    redirect: (context, state) {
      final authStatus = authSessionManager.status;
      final currentLocation = state.matchedLocation;

      final isOnAuthPage =
          currentLocation == Routes.login || currentLocation == Routes.signup;
      final isOnProfileCompletionPage =
          currentLocation == Routes.profileCompletion;

      switch (authStatus) {
        case AuthStatus.loading:
          return null;

        case AuthStatus.unauthenticated:
          if (!isOnAuthPage) {
            return Routes.login;
          }
          return null;

        case AuthStatus.needsProfileCompletion:
          if (!isOnProfileCompletionPage) {
            return Routes.profileCompletion;
          }
          return null;

        case AuthStatus.authenticated:
          if (isOnAuthPage || isOnProfileCompletionPage) {
            return Routes.home;
          }
          return null;
      }
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
      GoRoute(
        path: Routes.profileCompletion,
        pageBuilder: (context, state) => MaterialPage(
          child: ProfileCompletionScreen(
            ref.watch(profileCompletionVMProvider.notifier),
          ),
        ),
      ),
    ],
  );
});
