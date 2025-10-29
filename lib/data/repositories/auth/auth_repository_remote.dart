import 'package:fitnest/domain/repositories/auth_repository.dart';
import 'package:fitnest/data/services/api/auth_service.dart';
import 'package:fitnest/data/services/api/models/login_request/login_request.dart';
import 'package:fitnest/data/services/api/models/login_response/login_response.dart';
import 'package:fitnest/data/services/api/models/signup_request/signup_request.dart';
import 'package:fitnest/data/services/api/models/signup_response/signup_response.dart';
import 'package:fitnest/utils/result.dart';
import 'package:flutter/foundation.dart';

class AuthRepositoryRemote extends AuthRepository {
  AuthRepositoryRemote({required AuthService authService})
    : _authService = authService;

  final AuthService _authService;
  @override
  bool get isAuthenticated => _authService.isAuthenticated;

  @override
  String? get currentUserId => _authService.currentUserId;

  @override
  Stream<bool?> get authStateChanges =>
      _authService.authStateChanges.map((user) => user != null);

  @override
  Future<Result<void>> signup({
    required String email,
    required String password,
  }) async {
    try {
      final resultSignup = await _authService.signupWithEmailAndPassword(
        SignUpRequest(email: email, password: password),
      );
      switch (resultSignup) {
        case Ok<SignupResponse>():
          return Result.ok(null);
        case Error<SignupResponse>():
          debugPrint(resultSignup.error.toString());
          return Result.error(resultSignup.error);
      }
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<Result<void>> login({
    required String email,
    required String password,
  }) async {
    try {
      final resultLogin = await _authService.signInWithEmailAndPassword(
        LoginRequest(email: email, password: password),
      );
      switch (resultLogin) {
        case Ok<LoginResponse>():
          return Result.ok(null);
        case Error<LoginResponse>():
          debugPrint(resultLogin.error.toString());
          return Result.error(resultLogin.error);
      }
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<Result<void>> logout() async {
    await _authService.logout();
    return Result.ok(null);
  }
}
