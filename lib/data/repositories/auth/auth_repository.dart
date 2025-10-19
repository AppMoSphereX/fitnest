import 'package:fitnest/utils/result.dart';

abstract class AuthRepository {
  bool get isAuthenticated;

  Future<Result<void>> signup({
    required String email,
    required String password,
  });

  Future<Result<void>> login({required String email, required String password});

  Future<Result<void>> logout();
}
