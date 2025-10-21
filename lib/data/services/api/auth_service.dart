import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitnest/data/services/api/models/login_request/login_request.dart';
import 'package:fitnest/data/services/api/models/login_response/login_response.dart';
import 'package:fitnest/data/services/api/models/signup_request/signup_request.dart';
import 'package:fitnest/data/services/api/models/signup_response/signup_response.dart';
import 'package:fitnest/utils/result.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool get isAuthenticated => _auth.currentUser != null;

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  Future<Result<SignupResponse>> signupWithEmailAndPassword(
    SignUpRequest request,
  ) async {
    try {
      final result = await _auth.createUserWithEmailAndPassword(
        email: request.email,
        password: request.password,
      );
      if (result.user != null) {
        final user = result.user!;
        return Result.ok(
          SignupResponse(
            displayName: user.displayName ?? '',
            email: user.email ?? '',
            refreshToken: user.refreshToken ?? '',
          ),
        );
      } else {
        return Result.error(Exception('Signup failed'));
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<LoginResponse>> signInWithEmailAndPassword(
    LoginRequest request,
  ) async {
    try {
      final result = await _auth.signInWithEmailAndPassword(
        email: request.email,
        password: request.password,
      );
      if (result.user != null) {
        final user = result.user!;
        return Result.ok(
          LoginResponse(
            displayName: user.displayName ?? '',
            email: user.email ?? '',
            refreshToken: user.refreshToken ?? '',
          ),
        );
      } else {
        return Result.error(Exception('Login failed'));
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<String?> getIdToken() async {
    return await _auth.currentUser?.getIdToken();
  }

  Future<void> logout() async {
    await _auth.signOut();
  }
}
