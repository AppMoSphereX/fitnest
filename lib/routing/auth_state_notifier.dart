import 'dart:async';
import 'package:fitnest/data/repositories/auth/auth_repository.dart';
import 'package:fitnest/data/repositories/repositories_providers.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_state_notifier.g.dart';

class AuthStateNotifier extends ChangeNotifier {
  final AuthRepository _authRepository;
  StreamSubscription? _subscription;
  bool? _isAuthenticated;

  AuthStateNotifier(this._authRepository) {
    _subscription = _authRepository.authStateChanges.listen((isAuth) {
      _isAuthenticated = isAuth;
      notifyListeners();
    });
  }

  bool? get isAuthenticated => _isAuthenticated;

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}

@riverpod
AuthStateNotifier authStateNotifier(Ref ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  final notifier = AuthStateNotifier(authRepository);
  ref.onDispose(notifier.dispose);
  return notifier;
}
