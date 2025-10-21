import 'package:fitnest/routing/routes.dart';
import 'package:fitnest/ui/auth/login/login_screen_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:fitnest/ui/home/widgets/home_screen.dart';
import 'package:fitnest/ui/auth/login/login_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: Routes.login,
    debugLogDiagnostics: true,
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
