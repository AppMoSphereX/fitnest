import 'package:fitnest/data/repositories/auth/auth_repository.dart';
import 'package:fitnest/data/services/api/auth_service.dart';
import 'package:fitnest/data/services/api/models/signup_request/signup_request.dart';
import 'package:fitnest/data/services/api/models/signup_response/signup_response.dart';
import 'package:fitnest/domain/models/user/user.dart';
import 'package:fitnest/utils/result.dart';
import 'package:flutter/foundation.dart';

class AuthRepositoryRemote extends AuthRepository {
  AuthRepositoryRemote({required AuthService authService})
    : _authService = authService;

  final AuthService _authService;

  late User user;

  @override
  bool get isAuthenticated => _authService.isAuthenticated;

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
          user = User(
            email: resultSignup.value.email,
            displayName: resultSignup.value.displayName,
          );
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
  Future<Result<void>> logout() async {
    await _authService.logout();
    return Result.ok(null);
  }
}
