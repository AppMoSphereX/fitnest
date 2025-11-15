import 'package:fitnest/data/mappers/user_mapper.dart';
import 'package:fitnest/data/services/api/auth_service.dart';
import 'package:fitnest/data/services/api/firestore_service.dart';
import 'package:fitnest/data/services/api/models/user_dto/user_dto.dart';
import 'package:fitnest/domain/models/user/user.dart';
import 'package:fitnest/domain/repositories/user_repository.dart';
import 'package:fitnest/utils/result.dart';

class UserRepositoryRemote implements UserRepository {
  final FirestoreService _firestoreService;
  final AuthService _authService;
  User? _cachedUser;

  UserRepositoryRemote({
    required FirestoreService firestoreService,
    required AuthService authService,
  }) : _firestoreService = firestoreService,
       _authService = authService;

  @override
  Future<Result<User?>> getUserProfile() async {
    if (_cachedUser != null) {
      return Result.ok(_cachedUser);
    }

    final userId = _authService.currentUserId;
    if (userId == null) {
      return Result.error(Exception('User not found'));
    }
    final result = await _firestoreService.getUserProfile(userId);
    switch (result) {
      case Ok():
        final userDto = (result as Ok).value as UserDto?;
        final user = userDto?.toDomain();
        if (user != null) {
          _cachedUser = user;
        }
        return Result.ok(user);
      case Error():
        return Result.error((result as Error).error);
    }
  }

  @override
  Future<Result<void>> createUserProfile(User user) async {
    final result = await _firestoreService.createUserProfile(user.toDto());
    switch (result) {
      case Ok():
        _cachedUser = user;
        return Result.ok(null);
      case Error():
        return Result.error((result as Error).error);
    }
  }

  @override
  Future<Result<void>> updateUserProfile(User user) async {
    final result = await _firestoreService.updateUserProfile(user.toDto());
    switch (result) {
      case Ok():
        _cachedUser = user;
        return Result.ok(null);
      case Error():
        return Result.error((result as Error).error);
    }
  }
}
