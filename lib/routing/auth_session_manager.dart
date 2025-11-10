import 'dart:async';
import 'package:fitnest/data/repositories/repositories_providers.dart';
import 'package:fitnest/domain/repositories/auth_repository.dart';
import 'package:fitnest/domain/repositories/user_repository.dart';
import 'package:fitnest/domain/models/auth/auth_status.dart';
import 'package:fitnest/domain/models/user/user.dart';
import 'package:fitnest/utils/result.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_session_manager.g.dart';

class AuthSessionManager extends ChangeNotifier {
  final AuthRepository _authRepository;
  final UserRepository _userRepository;
  StreamSubscription? _subscription;
  AuthStatus _status = AuthStatus.loading;
  User? _currentUser;

  AuthSessionManager(this._authRepository, this._userRepository) {
    _subscription = _authRepository.authStateChanges.listen((isAuth) async {
      await _handleAuthStateChange(isAuth);
    });
  }

  AuthStatus get status => _status;
  User? get currentUser => _currentUser;

  Future<void> _handleAuthStateChange(bool? isAuth) async {
    if (isAuth == null || !isAuth) {
      _status = AuthStatus.unauthenticated;
      _currentUser = null;
      notifyListeners();
      return;
    }

    _status = AuthStatus.loading;
    notifyListeners();

    final userId = _authRepository.currentUserId;
    if (userId == null) {
      _status = AuthStatus.unauthenticated;
      _currentUser = null;
      notifyListeners();
      return;
    }

    final result = await _userRepository.getUserProfile(userId);
    
    switch (result) {
      case Ok():
        final user = result.value;
        if (user == null || !user.isProfileComplete) {
          _status = AuthStatus.needsProfileCompletion;
          _currentUser = user;
        } else {
          _status = AuthStatus.authenticated;
          _currentUser = user;
        }
        notifyListeners();
      case Error():
        // If we can't fetch the profile, assume it needs completion
        _status = AuthStatus.needsProfileCompletion;
        _currentUser = null;
        notifyListeners();
    }
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}

@riverpod
AuthSessionManager authSessionManager(Ref ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  final userRepository = ref.watch(userRepositoryProvider);
  final manager = AuthSessionManager(authRepository, userRepository);
  ref.onDispose(manager.dispose);
  return manager;
}


