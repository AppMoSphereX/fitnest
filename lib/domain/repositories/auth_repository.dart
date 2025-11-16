import 'package:fitnest/utils/result.dart';

abstract class AuthRepository {
  bool get isAuthenticated;
  String? get currentUserId;
  Stream<bool?> get authStateChanges;

  Future<Result<String>> signup({
    required String email,
    required String password,
  });

  Future<Result<void>> login({required String email, required String password});

  Future<Result<void>> logout();
}
